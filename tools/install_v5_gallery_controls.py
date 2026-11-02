#!/usr/bin/env python3
"""Add gallery drag/pinch crop and scope the thumbnail to QuickSnap camera mode."""
import argparse, base64, gzip, hashlib, json, os, re, sys, tempfile
from pathlib import Path
from datetime import datetime, timezone
REL=Path('smali_classes24/app/morphe/extension/instagram/patches/instants')
PKG='Lapp/morphe/extension/instagram/patches/instants/'
VM='Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;'
LEGACY_HELPER_SHA256={'GalleryCrop$CropView$1.smali': ['6d6b1b95a5ea466cc09d55830024ae8dedf97678e1376d870c7b05a4135965e9'], 'GalleryCrop$1.smali': ['2c31c49141da8249b8bc8efb06f55cea09ede71e91cf7e13964d0f210999ce85'], 'GalleryCrop$CropView.smali': ['2b089e26047dc161ec8a3b85a77576459bf41fcdbe5cc2c1f92a586081a84ce3'], 'GalleryCrop.smali': ['a15af9ff5d05f3a8b6126b0640a46de088cd82dbc4f4c7d4b97d77f8e5b406ea', '3e5a78f04c4e4867a239e8257697b376f950401af301e3562e37a011cac80b5c'], 'GalleryIconScope.smali': ['0d9a59888fe6406ecfb04ebfbf55b83ae170af8d3736d581f9ea0d06cc0b6266']}
PAYLOAD=json.loads(gzip.decompress(base64.b64decode(
'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'
'kvqEectiE2VEyw45r2Li5v2t5/8DlM6eL9+sAAA='
)))

def require(ok,message):
    if not ok: raise ValueError(message)

def replace(text,old,new):
    if text.count(new)==1:
        require(old not in text.replace(new,'',1),'Ambiguous patch site.')
        return text
    require(new not in text and text.count(old)==1,'Unrecognized source layout; no files changed.')
    return text.replace(old,new,1)

def plan(root):
    changes={}
    def update(rel,fn):
        path=root/rel;before=path.read_bytes();after=fn(before.decode()).encode()
        if after!=before:changes[rel]=(before,after)
    # The exact uploaded V5 bridge owns the pending camera VM.
    call='    invoke-static {p0, p1, v0}, '+PKG+'GalleryScene;->select(Landroid/app/Activity;Landroid/graphics/Bitmap;'+VM+')V'
    new=call.replace('GalleryScene;->select','GalleryCrop;->open')
    update(REL/'InstantsGalleryBridge.smali',lambda s:replace(s,call,new))
    # Keep the existing picker Activity alive while the crop is being edited.
    old='    invoke-virtual {p0}, Landroid/app/Activity;->finish()V\n    return-void\n\n    :decode_null'
    update(REL/'InstantsGalleryPickerActivity.smali',lambda s:replace(s,old,'    # Crop screen now owns completion.\n    return-void\n\n    :decode_null'))
    # Fail closed on recreation rather than displaying the old blank Activity.
    old='    :already_open\n    return-void'
    update_again=REL/'InstantsGalleryPickerActivity.smali'
    before,after=changes.get(update_again,((root/update_again).read_bytes(),(root/update_again).read_bytes()))
    updated=replace(after.decode(),old,'    :already_open\n    invoke-static {}, '+PKG+'InstantsGalleryBridge;->cancel()V\n    invoke-virtual {p0}, Landroid/app/Activity;->finish()V\n    return-void').encode()
    # Include the actual exception in the existing picker error toast.
    old_error='    const-string v0, "Selected photo failed. See InstantsGallery in Logcat."'
    new_error='    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;\n    move-result-object v0'
    updated=replace(updated.decode(),old_error,new_error).encode()
    # Set a complete platform Activity theme before decor/window initialization.
    old_create='    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V'
    new_create='    const v0, 0x1030009    # Theme.Black.NoTitleBar\n    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V\n'+old_create
    updated=replace(updated.decode(),old_create,new_create).encode()
    if before!=updated:changes[update_again]=(before,updated)
    fragment=Path('smali_classes16/X/XPO.smali')
    text=(root/fragment).read_text()
    require('.field public final A0C:Landroidx/compose/runtime/MutableState;' in text,'Unified fragment mode field differs.')
    enum=(root/'smali_classes16/X/Zss.smali').read_text()
    require('const-string v1, "CAMERA"' in enum and 'sput-object v3, LX/Zss;->A02:LX/Zss;' in enum,'Camera mode enum differs.')
    hook='    invoke-super {p0, p1, p2}, LX/4Ka;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V'
    text=replace(text,hook,hook+'\n    invoke-static {p0, p1}, '+PKG+'GalleryIconScope;->watch(LX/XPO;Landroid/view/View;)V')
    marker='.method public final onDestroyView()V\n    .locals 4'
    text=replace(text,marker,marker+'\n    iget-object v0, p0, LX/XPO;->A03:'+VM+'\n    invoke-static {v0}, '+PKG+'InstantsGalleryUi;->hide('+VM+')V')
    original=(root/fragment).read_bytes()
    if text.encode()!=original:changes[fragment]=(original,text.encode())
    require('.method public static current()Landroid/widget/ImageButton;' in (root/REL/'InstantsGalleryUi.smali').read_text(),'Gallery thumbnail API differs.')
    owns='\n.method public static owns('+VM+')Z\n    .locals 1\n    sget-object v0, '+PKG+'InstantsGalleryUi;->vm:'+VM+'\n    if-ne v0, p0, :other\n    const/4 v0, 0x1\n    return v0\n    :other\n    const/4 v0, 0x0\n    return v0\n.end method\n'
    def add_owns(s):
        if owns in s:return s
        require(' owns(' not in s,'Thumbnail ownership method differs.')
        return s+owns
    update(REL/'InstantsGalleryUi.smali',add_owns)
    require('.method public static select(Landroid/app/Activity;Landroid/graphics/Bitmap;'+VM+')V' in (root/REL/'GalleryScene.smali').read_text(),'Gallery scene API differs.')
    for name,content in PAYLOAD.items():
        rel=REL/name;path=root/rel;before=path.read_bytes() if path.exists() else None
        after=content.encode()
        require(before is None or before==after or hashlib.sha256(before or b'').hexdigest() in LEGACY_HELPER_SHA256.get(name, []),'A different crop helper already exists: '+name)
        if before!=after:changes[rel]=(before,after)
    build=Path('build_instants_termux.sh')
    old='"$SOURCE_DIR/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryScene.smali" || fail "Smali lint failed."'
    new=old.replace(' || fail',' "$SOURCE_DIR"/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryCrop*.smali "$SOURCE_DIR/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryIconScope.smali" || fail')
    update(build,lambda s:replace(s,old,new))
    lint=Path('build_support/smali_lint.py')
    old="glob.glob(ROOT+'/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryScene.smali')"
    new=old+" + glob.glob(ROOT+'/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryCrop*.smali') + glob.glob(ROOT+'/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryIconScope.smali')"
    update(lint,lambda s:replace(s,old,new))
    return changes

def atomic(path,data):
    with tempfile.NamedTemporaryFile(dir=path.parent,delete=False) as handle:
        temp=Path(handle.name);handle.write(data);handle.flush();os.fsync(handle.fileno())
    try:
        os.chmod(temp,path.stat().st_mode & 0o777 if path.exists() else 0o644)
        os.replace(temp,path)
    finally:temp.unlink(missing_ok=True)

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source_root',type=Path);parser.add_argument('--check',action='store_true');args=parser.parse_args()
    root=args.source_root.expanduser().resolve()
    try:
        changes=plan(root)
        if not changes:print('Gallery controls already installed; no files changed.');return 0
        if args.check:print('Compatible:',len(changes),'files. No files changed.');return 0
        backup=root.parent/'instants-controls-backups'/root.name/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')
        backup.mkdir(parents=True,exist_ok=False)
        for rel,(before,after) in changes.items():
            if before is not None:
                target=backup/rel;target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(before)
        (backup/'new-files.json').write_text(json.dumps([str(rel) for rel,(before,_) in changes.items() if before is None]))
        applied=[]
        try:
            for rel,(before,after) in changes.items():
                path=root/rel
                require((path.read_bytes() if path.exists() else None)==before,'Source changed during update.')
                atomic(path,after);applied.append(rel)
        except Exception:
            for rel in reversed(applied):
                before=changes[rel][0]
                if before is None:(root/rel).unlink(missing_ok=True)
                else:atomic(root/rel,before)
            raise
        print('Backup:',backup)
        print('Installed gallery controls revision 3 (isolated crop theme). Rebuild with your existing V5 script/key.')
        return 0
    except (OSError,ValueError,UnicodeError) as error:
        print('ERROR:',error,file=sys.stderr);return 1
if __name__=='__main__':sys.exit(main())
