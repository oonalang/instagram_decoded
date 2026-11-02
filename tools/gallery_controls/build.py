#!/usr/bin/env python3
"""Regenerate runtime Smali and its standalone installer payload (JDK 11+)."""
import argparse,base64,gzip,json,re,subprocess,tempfile,zipfile
from pathlib import Path
p=argparse.ArgumentParser(description=__doc__)
for name in ['android-jar','dx-jar','apktool-jar']:p.add_argument('--'+name,type=Path,required=True)
a=p.parse_args();here=Path(__file__).resolve().parent

def run(*args):subprocess.run([str(x) for x in args],check=True)
with tempfile.TemporaryDirectory() as temp:
 root=Path(temp);classes=root/'classes'
 run('java',here/'Compile.java',a.android_jar.resolve(),classes,here/'compile_stubs',here/'src')
 jar=root/'controls.jar'
 with zipfile.ZipFile(jar,'w') as archive:
  for file in classes.rglob('*.class'):
   if file.name.startswith(('GalleryCrop','GalleryIconScope')):archive.write(file,file.relative_to(classes))
 dex=root/'controls.dex'
 run('java','-cp',a.dx_jar.resolve(),'com.android.dx.command.Main','--dex','--output='+str(dex),jar)
 run('java','-cp',a.apktool_jar.resolve(),here/'Disassemble.java',dex,here/'smali')
 payload={}
 for file in sorted((here/'smali').rglob('*.smali')):
  content=file.read_text()
  # Name inherited Android View calls explicitly so the legacy local linter
  # does not mistake them for undefined methods in our own package.
  for sig in ['setContentDescription(Ljava/lang/CharSequence;)V','getParent()Landroid/view/ViewParent;','invalidate()V']:
   content=content.replace('Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->'+sig,'Landroid/view/View;->'+sig)
  file.write_text(content);payload[file.name]=content
 encoded=base64.b64encode(gzip.compress(json.dumps(payload).encode(),mtime=0)).decode()
 installer=here.parent/'install_v5_gallery_controls.py';text=installer.read_text()
 start=text.index('PAYLOAD=json.loads(');end=text.index('\ndef require(',start)
 block='PAYLOAD=json.loads(gzip.decompress(base64.b64decode(\n'+''.join(repr(encoded[i:i+100])+'\n' for i in range(0,len(encoded),100))+')))\n'
 installer.write_text(text[:start]+block+text[end:])
