@echo off
if %PROCESSOR_ARCHITECTURE% == AMD64 (
if not exist "%windir%\Syswow64\MiniblinkSDK_201.dll" goto ends
regsvr32 "%windir%\Syswow64\MiniblinkSDK_201.dll" /s /u
del /f /s /q "%windir%\Syswow64\MiniblinkSDK_201.dll"
) else (
if not exist "%windir%\System32\MiniblinkSDK_201.dll" goto ends
regsvr32 "%windir%\System32\MiniblinkSDK_201.dll" /s /u
del /f /s /q "%windir%\System32\MiniblinkSDK_201.dll"
)
:ends