import importlib.util,json,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
spec=importlib.util.spec_from_file_location('controls',Path(__file__).resolve().parents[1]/'tools/install_v5_gallery_controls.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)

class ControlsTests(unittest.TestCase):
 def fixture(self,root):
  def put(rel,text):
   p=root/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text)
  put(m.REL/'InstantsGalleryBridge.smali','    invoke-static {p0, p1, v0}, '+m.PKG+'GalleryScene;->select(Landroid/app/Activity;Landroid/graphics/Bitmap;'+m.VM+')V')
  put(m.REL/'InstantsGalleryPickerActivity.smali','    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V\n    invoke-virtual {p0}, Landroid/app/Activity;->finish()V\n    return-void\n\n    :decode_null\n    :already_open\n    return-void\n    const-string v0, "Selected photo failed. See InstantsGallery in Logcat."')
  put(m.REL/'InstantsGalleryUi.smali','.method public static current()Landroid/widget/ImageButton;\n')
  put(m.REL/'GalleryScene.smali','.method public static select(Landroid/app/Activity;Landroid/graphics/Bitmap;'+m.VM+')V\n# retain rendering V2\n')
  put(Path('smali_classes16/X/XPO.smali'),'.field public final A0C:Landroidx/compose/runtime/MutableState;\n    invoke-super {p0, p1, p2}, LX/4Ka;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V\n.method public final onDestroyView()V\n    .locals 4')
  put(Path('smali_classes16/X/Zss.smali'),'const-string v1, "CAMERA"\nsput-object v3, LX/Zss;->A02:LX/Zss;')
  put(Path('build_instants_termux.sh'),'"$SOURCE_DIR/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryScene.smali" || fail "Smali lint failed."')
  put(Path('build_support/smali_lint.py'),"glob.glob(ROOT+'/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryScene.smali')")
 def test_plan_readonly_idempotent_preserves_scene(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);self.fixture(root)
   snapshot={p:p.read_bytes() for p in root.rglob('*') if p.is_file()}
   changes=m.plan(root)
   self.assertEqual(snapshot,{p:p.read_bytes() for p in root.rglob('*') if p.is_file()})
   self.assertNotIn(m.REL/'GalleryScene.smali',changes)
   for rel,(_,after) in changes.items():m.atomic(root/rel,after)
   self.assertEqual({},m.plan(root))
   fragment=(root/'smali_classes16/X/XPO.smali').read_text()
   self.assertIn('InstantsGalleryUi;->hide('+m.VM+')V',fragment)
   self.assertNotIn('->hideAll()',fragment)
 def test_unknown_source_rejected_before_any_write(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);self.fixture(root)
   (root/'smali_classes16/X/XPO.smali').write_text('unrecognized')
   snapshot={p:p.read_bytes() for p in root.rglob('*') if p.is_file()}
   with self.assertRaises(ValueError):m.plan(root)
   self.assertEqual(snapshot,{p:p.read_bytes() for p in root.rglob('*') if p.is_file()})
 def test_known_prior_helper_upgrades_and_unknown_is_refused(self):
  import hashlib
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);self.fixture(root)
   for rel,(_,after) in m.plan(root).items():m.atomic(root/rel,after)
   crop=root/m.REL/'GalleryCrop.smali'
   legacy=b'known legacy helper'
   crop.write_bytes(legacy)
   with patch.object(m,'LEGACY_HELPER_SHA256',{'GalleryCrop.smali':[hashlib.sha256(legacy).hexdigest()]}):
    changes=m.plan(root)
    self.assertEqual({m.REL/'GalleryCrop.smali'},set(changes))
   with self.assertRaises(ValueError):m.plan(root)
 def test_crop_never_locks_translucent_activity_orientation(self):
  self.assertNotIn('->setRequestedOrientation(',m.PAYLOAD['GalleryCrop.smali'])
  source=Path(__file__).resolve().parents[1]/'tools/gallery_controls/src/app/morphe/extension/instagram/patches/instants/GalleryCrop.java'
  self.assertNotIn('.setRequestedOrientation(',source.read_text())
 def test_platform_theme_set_before_picker_super_oncreate(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);self.fixture(root)
   changes=m.plan(root)
   picker=changes[m.REL/'InstantsGalleryPickerActivity.smali'][1].decode()
   self.assertLess(picker.index('->setTheme(I)V'),picker.index('->onCreate('))
   self.assertIn('Theme;->setTo(',m.PAYLOAD['GalleryCrop.smali'])
   self.assertIn('Theme;->applyStyle(',m.PAYLOAD['GalleryCrop.smali'])
 def test_payload_matches_generated_files_and_excludes_stubs(self):
  actual={p.name:p.read_text() for p in (Path(__file__).resolve().parents[1]/'tools/gallery_controls/smali').rglob('*.smali')}
  self.assertEqual(actual,m.PAYLOAD)
  self.assertEqual(5,len(actual))
  self.assertTrue(all(name.startswith(('GalleryCrop','GalleryIconScope')) for name in actual))

if __name__=='__main__':unittest.main()
