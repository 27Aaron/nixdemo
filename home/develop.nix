{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    nodejs_20
    jdk8
    vscode
    (pkgs.jetbrains.idea-ultimate.override {
      vmopts = ''
        -Xms128m
        -Xmx1024m
        -XX:ReservedCodeCacheSize=512m
        -XX:+IgnoreUnrecognizedVMOptions
        -XX:+UseG1GC
        -XX:SoftRefLRUPolicyMSPerMB=50
        -XX:CICompilerCount=2
        -XX:+HeapDumpOnOutOfMemoryError
        -XX:-OmitStackTraceInFastThrow
        -ea
        -Dsun.io.useCanonCaches=false
        -Djdk.http.auth.tunneling.disabledSchemes=""
        -Djdk.attach.allowAttachSelf=true
        -Djdk.module.illegalAccess.silent=true
        -Dkotlinx.coroutines.debug=off
        -XX:ErrorFile=$USER_HOME/java_error_in_idea_%p.log
        -XX:HeapDumpPath=$USER_HOME/java_error_in_idea.hprof

        --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
        --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED

        -javaagent:/home/aaron/Documents/ja-netfilter/ja-netfilter.jar=jetbrains
        -Dawt.toolkit.name=WLToolkit
      '';
    })
    (pkgs.jetbrains.webstorm.override {
      vmopts = ''
        -Xms128m
        -Xmx1024m
        -XX:ReservedCodeCacheSize=512m
        -XX:+IgnoreUnrecognizedVMOptions
        -XX:+UseG1GC
        -XX:SoftRefLRUPolicyMSPerMB=50
        -XX:CICompilerCount=2
        -XX:+HeapDumpOnOutOfMemoryError
        -XX:-OmitStackTraceInFastThrow
        -ea
        -Dsun.io.useCanonCaches=false
        -Djdk.http.auth.tunneling.disabledSchemes=""
        -Djdk.attach.allowAttachSelf=true
        -Djdk.module.illegalAccess.silent=true
        -Dkotlinx.coroutines.debug=off
        -XX:ErrorFile=$USER_HOME/java_error_in_idea_%p.log
        -XX:HeapDumpPath=$USER_HOME/java_error_in_idea.hprof

        --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
        --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED

        -javaagent:/home/aaron/Documents/ja-netfilter/ja-netfilter.jar=jetbrains
        -Dawt.toolkit.name=WLToolkit
      '';
    })
    (pkgs.jetbrains.datagrip.override {
      vmopts = ''
        -Xms128m
        -Xmx1024m
        -XX:ReservedCodeCacheSize=512m
        -XX:+IgnoreUnrecognizedVMOptions
        -XX:+UseG1GC
        -XX:SoftRefLRUPolicyMSPerMB=50
        -XX:CICompilerCount=2
        -XX:+HeapDumpOnOutOfMemoryError
        -XX:-OmitStackTraceInFastThrow
        -ea
        -Dsun.io.useCanonCaches=false
        -Djdk.http.auth.tunneling.disabledSchemes=""
        -Djdk.attach.allowAttachSelf=true
        -Djdk.module.illegalAccess.silent=true
        -Dkotlinx.coroutines.debug=off
        -XX:ErrorFile=$USER_HOME/java_error_in_idea_%p.log
        -XX:HeapDumpPath=$USER_HOME/java_error_in_idea.hprof

        --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
        --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED

        -javaagent:/home/aaron/Documents/ja-netfilter/ja-netfilter.jar=jetbrains
        -Dawt.toolkit.name=WLToolkit
      '';
    })
  ];
}
