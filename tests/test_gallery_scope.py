"""Source-guard regression tests for V5 camera-only gallery thumbnail patch."""
import importlib.util
from pathlib import Path
import sys
import unittest

sys.dont_write_bytecode = True
spec = importlib.util.spec_from_file_location(
    'scope', Path(__file__).resolve().parents[1] / 'tools/repair_v5_gallery_scope.py')
scope = importlib.util.module_from_spec(spec)
spec.loader.exec_module(scope)


def sample_ui():
    return ('.class public final ' + scope.PKG + 'InstantsGalleryUi;\n'
            + scope.START + '\n    .locals 14\n'
            + scope.ORIGINAL_START + '\n'
            + '    invoke-static {}, ' + scope.PKG + 'InstantsGalleryUi;->hideAll()V\n'
            + '    move-object v0, p0\n'
            + '    :have_activity\n'
            + scope.OLD_PARENT + '\n    :done\n    return-void\n.end method\n'
            + '# local thumbnail styling remains\n')


def sample_scene():
    return ('.class public final ' + scope.PKG + 'GalleryScene;\n'
            + scope.BIND + '\n    .locals 0\n'
            + scope.ANCHOR + '\n    return-void\n.end method\n'
            + '# local staging transforms remain\n')


class ScopeTests(unittest.TestCase):
    def test_ui_uses_camera_parent_not_root(self):
        source = sample_ui()
        changed = scope.patch_ui(source)
        self.assertNotEqual(source, changed)
        self.assertIn(scope.TARGET, changed)
        self.assertIn(scope.CAMERA_PARENT, changed)
        self.assertIn(scope.REFRESH, changed)
        self.assertNotIn(scope.OLD_PARENT, changed)
        self.assertIn('# local thumbnail styling remains', changed)
        self.assertEqual(changed, scope.patch_ui(changed))

    def test_binding_refreshes_camera_owner(self):
        source = sample_scene()
        changed = scope.patch_scene(source)
        self.assertIn(scope.CALL, changed)
        self.assertIn('# local staging transforms remain', changed)
        self.assertEqual(changed, scope.patch_scene(changed))

    def test_unknown_ui_refused(self):
        with self.assertRaises(ValueError):
            scope.patch_ui(sample_ui().replace('findViewById', 'getViewById'))

    def test_unknown_camera_binding_refused(self):
        with self.assertRaises(ValueError):
            scope.patch_scene(sample_scene().replace('galleryCamera', 'galleryCameraX'))


if __name__ == '__main__':
    unittest.main()
