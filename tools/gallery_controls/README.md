# V5 gallery controls helpers

Java sources are compiled against an Android API jar and compile-only stubs for
the existing Instagram/gallery APIs. **Stubs are excluded from runtime output.**
The checked-in Smali and embedded updater payload allow Termux installation
without Java compilation or dependency downloads.

Regenerate with JDK 11+ (validated with JDK 21), Android 4.1.1.4 API jar,
dx 30.0.2 from dex-tools 2.4 and Apktool 2.12.1:

```sh
python tools/gallery_controls/build.py --android-jar /path/android.jar --dx-jar /path/dx-30.0.2.jar --apktool-jar /path/apktool.jar
```

This rebuilds the helpers and embeds their Smali in
`tools/install_v5_gallery_controls.py`. None of these compile-only stubs should
be copied into an APK. The installer copies only five GalleryCrop/IconScope
classes and patches the existing V5 entry points.
