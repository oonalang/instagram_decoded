import java.io.*;
import com.android.tools.smali.baksmali.*;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
class Disassemble{public static void main(String[]args)throws Exception{
 var options=new BaksmaliOptions();options.localsDirective=true;options.debugInfo=false;
 try(var in=new BufferedInputStream(new FileInputStream(args[0]))){
 Baksmali.disassembleDexFile(new DexBackedDexFile(null,in.readAllBytes(),0),new File(args[1]),1,options);
 }
}}
