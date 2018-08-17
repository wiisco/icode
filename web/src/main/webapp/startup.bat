@echo off
rem /**
rem  * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
rem  *
rem  * Author: ThinkGem@163.com
rem  * 
rem  */
echo.
echo [信息] 运行Web工程。
echo.
rem pause
rem echo.

%~d0
cd %~dp0

title %cd%

set JAVA_OPTS= -Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m

set CURR_DIR=%cd%
cd..
call java -cp %CURR_DIR% org.springframework.boot.loader.WarLauncher

pause