import importlib.util
from pathlib import Path
import tempfile
import unittest

base=Path(__file__).parent
spec=importlib.util.spec_from_file_location('p',base/'apply_v5_crop.py')
p=importlib.util.module_from_spec(spec)
spec.loader.exec_module(p)

class Tests(unittest.TestCase):
 def test_class(self):
  s=p.check_smali('handler', (base/'InstantsGalleryCropTouch.smali').read_text())
  self.assertEqual(s.count('.method '), s.count('.end method'))
  self.assertIn('.method public onTouch(',s)
  self.assertIn('.method public static capture(',s)
  self.assertIn('setClipBounds',s)
  self.assertIn('getActionMasked',s)
 def test_bridge(self):
  s=f'''.class public final {p.PKG}InstantsGalleryBridge;\n.super Ljava/lang/Object;\n.field private static uiContext:Landroid/content/Context;\n.method public static openGallery(Landroid/content/Context;{p.VM})V\n.locals 5\n    :start\n    const/16 v0, 0x11\n    return-void\n.end method\n'''
  x=p.patch_bridge(s)
  self.assertIn('cropWidth()I',x)
  self.assertIn('GalleryScene;->rememberSize',x)
  self.assertEqual(x,p.patch_bridge(x))
 def test_editor(self):
  pkg=p.PKG
  s=f'''.class public final {pkg}InstantsGalleryEditor;\n.super Ljava/lang/Object;\n.method public static build(Landroid/app/Activity;Landroid/graphics/Bitmap;ILjava/lang/String;)V\n.locals 9\n    sput-object v1, {pkg}InstantsGalleryEditor;->label:Landroid/widget/TextView;\n    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;\n    invoke-virtual {{v1, v2}}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V\n    const-string v2, "Photo preview. Swipe left or right to change filter."\n    invoke-virtual {{v1, v2}}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V\n    new-instance v2, {pkg}InstantsGalleryEditor$Touch;\n    invoke-direct {{v2, p0}}, {pkg}InstantsGalleryEditor$Touch;-><init>(Landroid/content/Context;)V\n    invoke-virtual {{v1, v2}}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V\n    return-void\n.end method\n.method public static bake()Landroid/graphics/Bitmap;\n.locals 2\n    invoke-static {{v1}}, {pkg}InstantsGalleryEditor;->filterFor(I)Landroid/graphics/ColorMatrixColorFilter;\n    new-instance v0, Landroid/graphics/Canvas;\n    return-object v0\n.end method\n.method public onClick(Landroid/view/View;)V\n.locals 4\n    iget v0, p0, {pkg}InstantsGalleryEditor;->mode:I\n    if-eqz v0, :send\n    :send\n    return-void\n.end method\n'''
  a=p.patch_editor(s)
  self.assertEqual(a,p.patch_editor(a))
  self.assertIn('capture(Landroid/widget/ImageView;)',a)
  self.assertNotIn('new-instance v2, '+pkg+'InstantsGalleryEditor$Touch;',a)
  self.assertIn('InstantsGalleryEditor;->step(Z)',a)

if __name__ == '__main__':unittest.main()
