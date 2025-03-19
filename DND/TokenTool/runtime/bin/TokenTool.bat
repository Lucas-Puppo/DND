@echo off
set DIR="%~dp0"
set JAVA_EXEC="%DIR:"=%\java"



pushd %DIR% & %JAVA_EXEC% %CDS_JVM_OPTS% -Dfile.encoding=UTF-8 -p "%~dp0/../app" -m net.rptools.tokentool/net.rptools.tokentool.client.TokenTool  %* & popd
