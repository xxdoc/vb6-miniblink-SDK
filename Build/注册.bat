@echo off
@set root=%~dp0
if %PROCESSOR_ARCHITECTURE% == AMD64 (
if exist "%windir%\Syswow64\MiniblinkSDK_202.dll" goto ends
xcopy "%root%MiniblinkSDK_202.dll" "%windir%\Syswow64\" /s/y
regsvr32 "%windir%\Syswow64\MiniblinkSDK_202.dll" /s
) else (
if exist "%windir%\System32\MiniblinkSDK_202.dll" goto ends
xcopy "%root%MiniblinkSDK_202.dll" "%windir%\System32\" /s/y
regsvr32 "%windir%\System32\MiniblinkSDK_202.dll" /s)
:ends