import java.nio.file.*;import java.util.*;
class Compile {public static void main(String[] args)throws Exception{
 var flags=new ArrayList<String>(List.of("-source","8","-target","8","-cp",args[0],"-d",args[1]));
 for(int i=2;i<args.length;i++)try(var paths=Files.walk(Path.of(args[i]))){paths.filter(p->p.toString().endsWith(".java")).forEach(p->flags.add(p.toString()));}
 if(javax.tools.ToolProvider.getSystemJavaCompiler().run(null,System.out,System.err,flags.toArray(String[]::new))!=0)System.exit(1);
}}
