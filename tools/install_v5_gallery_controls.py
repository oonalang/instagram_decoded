#!/usr/bin/env python3
"""Add gallery drag/pinch crop and scope the thumbnail to QuickSnap camera mode."""
import argparse, base64, gzip, json, os, re, sys, tempfile
from pathlib import Path
from datetime import datetime, timezone
REL=Path('smali_classes24/app/morphe/extension/instagram/patches/instants')
PKG='Lapp/morphe/extension/instagram/patches/instants/'
VM='Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;'
PAYLOAD=json.loads(gzip.decompress(base64.b64decode(
'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'
'5pKdJj2oAAA='
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
        require(before is None or before==after,'A different crop helper already exists: '+name)
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
        print('Installed camera-only gallery icon and drag/pinch crop preview. Rebuild with your existing V5 script/key.')
        return 0
    except (OSError,ValueError,UnicodeError) as error:
        print('ERROR:',error,file=sys.stderr);return 1
if __name__=='__main__':sys.exit(main())
