#!/usr/bin/env python3
"""Run the actual crop theme factory against minimal framework test doubles."""
import argparse,os,subprocess,tempfile
from pathlib import Path
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--android-jar',type=Path,required=True);a=p.parse_args()
here=Path(__file__).resolve().parent
with tempfile.TemporaryDirectory() as temp:
 root=Path(temp);classes=root/'classes';runtime=root/'runtime'
 subprocess.run(['java',str(here/'Compile.java'),str(a.android_jar.resolve()),str(classes),str(here/'compile_stubs'),str(here/'src')],check=True)
 subprocess.run(['java',str(here/'Compile.java'),os.pathsep.join([str(classes),str(a.android_jar.resolve())]),str(runtime),str(here/'test_theme')],check=True)
 subprocess.run(['java','-cp',os.pathsep.join([str(runtime),str(classes),str(a.android_jar.resolve())]),'app.morphe.extension.instagram.patches.instants.ThemeRegression'],check=True)
