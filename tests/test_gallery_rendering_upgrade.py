"""Regression: V1 users must receive V2, with safe retries and reversibility."""
import importlib.util
from pathlib import Path
import sys
import unittest

sys.dont_write_bytecode = True
spec = importlib.util.spec_from_file_location(
    'rendering', Path(__file__).resolve().parents[1] / 'tools/repair_v5_gallery_rendering.py')
patch = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patch)


def source(install, crop):
    return ('.class public final Lapp/morphe/extension/instagram/patches/instants/GalleryScene;\n'
            + patch.HEADER + '\n    .locals 6\n' + install
            + '\n    const-string v3, "instants_gallery_source"\n'
            + '    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->publish(LX/34o;)V\n'
            + '.end method\n'
            + '.method private static frame(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;\n'
            + '    .locals 9\n' + crop + '\n.end method\n'
            + '# independent local change\n')


class UpgradeTests(unittest.TestCase):
    def test_v1_migrates_to_same_result_as_original(self):
        original = source(patch.OLD, patch.CROP_OLD)
        v1 = source(patch.NEW, patch.CROP_V1)
        v2 = patch.repair(v1)
        self.assertNotEqual(v1, v2)
        self.assertEqual(v2, patch.repair(original))
        self.assertEqual(v2, patch.repair(v2))
        self.assertEqual(original, patch.repair(v2, revert=True))
        self.assertEqual(original, patch.repair(v1, revert=True))
        self.assertTrue(v2.endswith('# independent local change\n'))

    def test_unknown_crop_refused(self):
        altered = source(patch.NEW, patch.CROP_V1.replace('Math;->max', 'Math;->min'))
        with self.assertRaises(ValueError):
            patch.repair(altered)

    def test_duplicate_crop_refused(self):
        with self.assertRaises(ValueError):
            patch.repair(source(patch.NEW, patch.CROP_V1 + '\n' + patch.CROP_V1))


if __name__ == '__main__':
    unittest.main()
