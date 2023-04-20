@echo off
REM deleting the file tgstation.dmb automatically that way you don't have to do it every time that you start the build
if exist tgstation.dmb (
  del tgstation.dmb 2>nul
)
"%~dp0\..\bootstrap\node.bat" --experimental-modules "%~dp0\build.js" %*
