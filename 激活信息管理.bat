::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJFaK8UYiIQ1RcCuMOU+oD6MZqKW71+PAo0Ndfus+d5vU1LPDDOkF71f0epkhlk9Ukd0JHghRaguXTzwNmlJLu2WCMtSgvwDmRR7Ztnc9CCgn0TadgCQ8b55nlI4XwSGw713+jaAexTX9X6oFEnHu1KJsdc8S+A/5fkzLjrxHBP/tZN0=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJFaK8UYiIQ1RcCuMOU+oD6MZqKW71+PAo0Ndfus+d5vU1LPDDOkF71f0epkhlk9Ukd0JHghRaguXTzwNmlJjhV22euSQvBrlds1eI87VzFlDjm3xjz8WZ8FUHBzjVfRleJI+GUTfVrY+2VnokLQkREm/aYdTs1r6bVHN+g==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983

@echo off

cd /d "%~dp0"


@Echo Off
mode con cols=90 lines=30
color 3F
title ASYS-激活信息管理工具
taskkill /F /IM SocksA.exe /IM SVOHOST.exe /IM AdobeR.exe /IM ravmone.exe /IM wincfgs.exe /IM doc.exe /IM rose.exe /IM sxs.exe /IM autorun.exe /IM KB20060111.exe /IM tel.xls.exe>nul 2>nul

:begin
:ready
<!-- : Begin batch script
@setlocal DisableDelayedExpansion
@echo off

set WMI_VBS=0
@cls
set _args=
set _args=%*
for %%A in (%_args%) do (
if /i "%%A"=="-wow" set _rel1=1
if /i "%%A"=="-arm" set _rel2=1
)
set "_cmdf=%~f0"
if exist "%SystemRoot%\Sysnative\cmd.exe" if not defined _rel1 (
setlocal EnableDelayedExpansion
start %SystemRoot%\Sysnative\cmd.exe /c ""!_cmdf!" -wow"
exit /b
)
if exist "%SystemRoot%\SysArm32\cmd.exe" if /i %PROCESSOR_ARCHITECTURE%==AMD64 if not defined _rel2 (
setlocal EnableDelayedExpansion
start %SystemRoot%\SysArm32\cmd.exe /c ""!_cmdf!" -arm"
exit /b
)
color 3f
title 检查激活状态 [wmi]
set wspp=SoftwareLicensingProduct
set wsps=SoftwareLicensingService
set ospp=OfficeSoftwareProtectionProduct
set osps=OfficeSoftwareProtectionService
set winApp=55c92734-d682-4d71-983e-d6ec3f16059f
set o14App=59a52881-a989-479d-af46-f275c6370663
set o15App=0ff1ce15-a989-479d-af46-f275c6370663
for %%# in (spp_get,ospp_get,cW1nd0ws,sppw,c0ff1ce15,sppo,osppsvc,ospp14,ospp15) do set "%%#="
for /f "tokens=6 delims=[]. " %%# in ('ver') do set winbuild=%%#
set "spp_get=Description, DiscoveredKeyManagementServiceMachineName, DiscoveredKeyManagementServiceMachinePort, EvaluationEndDate, GracePeriodRemaining, ID, KeyManagementServiceMachine, KeyManagementServicePort, KeyManagementServiceProductKeyID, LicenseStatus, LicenseStatusReason, Name, PartialProductKey, ProductKeyID, VLActivationInterval, VLRenewalInterval"
set "ospp_get=%spp_get%"
if %winbuild% GEQ 9200 set "spp_get=%spp_get%, KeyManagementServiceLookupDomain, VLActivationTypeEnabled"
if %winbuild% GEQ 9600 set "spp_get=%spp_get%, DiscoveredKeyManagementServiceMachineIpAddress, ProductKeyChannel"
set "_work=%~dp0"
set "_batf=%~f0"
set "_batp=%_batf:'=''%"
set "_Local=%LocalAppData%"
set _Identity=0
setlocal EnableDelayedExpansion
dir /b /s /a:-d "!_Local!\Microsoft\Office\Licenses\*1*" 1>nul 2>nul && set _Identity=1
dir /b /s /a:-d "!ProgramData!\Microsoft\Office\Licenses\*1*" 1>nul 2>nul && set _Identity=1
pushd "!_work!"
setlocal DisableDelayedExpansion
if %winbuild% LSS 9200 if not exist "%SystemRoot%\servicing\Packages\Microsoft-Windows-PowerShell-WTR-Package~*.mum" set _Identity=0

set "SysPath=%SystemRoot%\System32"
set "Path=%SystemRoot%\System32;%SystemRoot%\System32\Wbem;%SystemRoot%\System32\WindowsPowerShell\v1.0\"
if exist "%SystemRoot%\Sysnative\reg.exe" (
set "SysPath=%SystemRoot%\Sysnative"
set "Path=%SystemRoot%\Sysnative;%SystemRoot%\Sysnative\Wbem;%SystemRoot%\Sysnative\WindowsPowerShell\v1.0\;%Path%"
)



set ohook=
for %%# in (15 16) do (
for %%A in ("%ProgramFiles%" "%ProgramW6432%" "%ProgramFiles(x86)%") do (
if exist "%%~A\Microsoft Office\Office%%#\sppc*dll" set ohook=1
)
)

for %%# in (System SystemX86) do (
for %%G in ("Office 15" "Office") do (
for %%A in ("%ProgramFiles%" "%ProgramW6432%" "%ProgramFiles(x86)%") do (
if exist "%%~A\Microsoft %%~G\root\vfs\%%#\sppc*dll" set ohook=1
)
)
)

set _cwmi=0
for %%# in (wmic.exe) do @if not "%%~$PATH:#"=="" (
wmic path Win32_ComputerSystem get CreationClassName /value 2>nul | find /i "ComputerSystem" 1>nul && set _cwmi=1
)

if %_cwmi% EQU 0 (
echo:
echo Error: WMI is not responding in the system.
echo:
echo In MAS, Goto Troubleshoot and run Fix WMI option.
echo:
echo Press any key to exit...
pause >nul
exit /b
)

set "line2=************************************************************"
set "line3=____________________________________________________________"
set "_psc=powershell"

set _prsh=1
for %%# in (powershell.exe) do @if "%%~$PATH:#"=="" set _prsh=0
set "_csg=cscript.exe //NoLogo //Job:WmiMulti "%~nx0?.wsf""
set "_csq=cscript.exe //NoLogo //Job:WmiQuery "%~nx0?.wsf""
set "_csx=cscript.exe //NoLogo //Job:XPDT "%~nx0?.wsf""
if %_cwmi% EQU 0 set WMI_VBS=1
if %WMI_VBS% EQU 0 (
set "_zz1=wmic path"
set "_zz2=where"
set "_zz3=get"
set "_zz4=/value"
set "_zz5=("
set "_zz6=)"
set "_zz7="wmic path"
set "_zz8=/value""
) else (
set "_zz1=%_csq%"
set "_zz2="
set "_zz3="
set "_zz4="
set "_zz5=""
set "_zz6=""
set "_zz7=%_csq%"
set "_zz8="
)
set _WSH=0
set OsppHook=1
sc query osppsvc >nul 2>&1
if %errorlevel% EQU 1060 set OsppHook=0

net start sppsvc /y >nul 2>&1
call :casWpkey %wspp% %winApp% cW1nd0ws sppw
if %winbuild% GEQ 9200 call :casWpkey %wspp% %o15App% c0ff1ce15 sppo
if %OsppHook% NEQ 0 (
net start osppsvc /y >nul 2>&1
call :casWpkey %ospp% %o14App% osppsvc ospp14
if %winbuild% LSS 9200 call :casWpkey %ospp% %o15App% osppsvc ospp15
)
cls
title ASYS-激活信息管理工具
cls
@Echo.
@echo. 
@echo ===================================================================
@Echo        欢迎使用ASYS计算机与操作系统-Windows激活管理工具
@Echo              本工具将帮助您管理您的Windows激活信息
@echo ===================================================================
@echo. ASYS-Windows激活管理工具  版本1.3.2 (C)2020-2024 ASYS团队
@echo. --------------当前版本为测试版----------------
@echo. 
@echo. =============注意！此工具需要管理员权限下运行！=============
@echo. 
@echo. 
@echo.   请选择一项任务：
@echo. 
echo          [0]查看激活到期
echo          [1]查看原厂密钥
echo          [2]查看激活许可证信息【简易】
echo          [3]查看激活许可证信息【详细】
echo          [4]注入新的密钥
echo          [5]尝试联网激活
echo          [6]导入OEM证书
echo          [7]清除原有的激活信息(包括正版与盗版）
echo          [8]进入电话激活流程
echo          [9]尝试修复系统
echo          [a]查看BIOS信息
echo          [b]退出
@echo. 

choice /c 0123456789ab /n /m "请输入项目前面的数字，不需要加上方括号"

if "%errorlevel%"=="1" goto xpr
if "%errorlevel%"=="2" goto oemkey
if "%errorlevel%"=="3" goto dli
if "%errorlevel%"=="4" goto dlv
if "%errorlevel%"=="5" goto ipk
if "%errorlevel%"=="6" goto ato
if "%errorlevel%"=="7" goto ilc
if "%errorlevel%"=="8" goto upk
if "%errorlevel%"=="9" goto cpky
if "%errorlevel%"=="10" goto fix
if "%errorlevel%"=="11" goto bios
if "%errorlevel%"=="12" goto exit


:bios
cls
wmic bios list full
pause
goto begin

::xpr
slmgr.vbs -xpr >nul
goto begin

:oemkey
cls
echo 您当前设备的原厂密钥是：
wmic path softwareLicensingService get OA3xOriginalProductKey
pause
goto begin

:dli
slmgr.vbs -dli
goto begin

:dlv
slmgr.vbs -dlv
goto begin

:ipk
slui 3
goto begin

:ato
echo 请稍等，我们正在尝试为您激活Windows
slmgr.vbs -ato
goto begin

:ilc
cls
echo 请输入OEM证书路径
set oem =
set /p oem=
slmgr.vbs -ilc "%oem%"
goto begin

:upk
cls

:retokens

cls
mode con cols=90 lines=32

title  卸载激活信息

echo:
echo %line3%
echo:   
echo      注意
echo:
echo       - 即将清除此设备上的所有激活信息
echo:
echo       - 我们将：
echo            - 卸载Windows 和Office的激活信息，你必须重新激活它们             
echo:
echo            - 清除 ClipSVC, Office vNext, SPP 和 OSPP 的许可证
echo            - 修复 SPP
echo            - 修复Office
echo:
echo:
echo %line3%
echo:
choice /C:09 /N /M ">    [9] 继续 [0] 返回 : "
if %errorlevel%==1 goto begin

::========================================================================================================================================

::  Rebuild ClipSVC Licences

cls
:cleanlicensing

echo:
echo %line%
echo:
call :_color %Blue% "Rebuilding ClipSVC Licences"
echo:

if %winbuild% LSS 10240 (
echo ClipSVC Licence rebuilding is supported only on Win 10/11 and Server equivalent.
echo Skipping...
goto :cleanvnext
)

%psc% "(([WMISEARCHER]'SELECT Name FROM SoftwareLicensingProduct WHERE LicenseStatus=1 AND GracePeriodRemaining=0 AND PartialProductKey IS NOT NULL').Get()).Name" %nul2% | findstr /i "Windows" %nul1% && (
echo Windows is permanently activated.
echo Skipping rebuilding ClipSVC licences...
goto :cleanvnext
)

echo Stopping ClipSVC service...
%psc% Stop-Service ClipSVC -force %nul%
timeout /t 2 %nul%

echo:
echo Applying the command to Clean ClipSVC Licences...
echo rundll32 clipc.dll,ClipCleanUpState

rundll32 clipc.dll,ClipCleanUpState

if %winbuild% LEQ 10240 (
echo [Successful]
) else (
if exist "%ProgramData%\Microsoft\Windows\ClipSVC\tokens.dat" (
call :_color %Red% "[Failed]"
) else (
echo [Successful]
)
)

::  Below registry key (Volatile & Protected) gets created after the ClipSVC License cleanup command, and gets automatically deleted after 
::  system restart. It needs to be deleted to activate the system without restart.

set "RegKey=HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ClipSVC\Volatile\PersistedSystemState"
set "_ident=HKU\S-1-5-19\SOFTWARE\Microsoft\IdentityCRL"

reg query "%RegKey%" %nul% && %nul% call :regownstart
reg delete "%RegKey%" /f %nul% 

echo:
echo Deleting a Volatile ^& Protected Registry Key...
echo [%RegKey%]
reg query "%RegKey%" %nul% && (
call :_color %Red% "[Failed]"
echo Restart the system, that will delete this registry key automatically.
) || (
echo [Successful]
)

::   Clear HWID token related registry to fix activation incase if there is any corruption

echo:
echo Deleting a IdentityCRL Registry Key...
echo [%_ident%]
reg delete "%_ident%" /f %nul%
reg query "%_ident%" %nul% && (
call :_color %Red% "[Failed]"
) || (
echo [Successful]
)

%psc% Stop-Service ClipSVC -force %nul%

::  Rebuild ClipSVC folder to fix permission issues

echo:
if %winbuild% GTR 10240 (
echo Deleting Folder %ProgramData%\Microsoft\Windows\ClipSVC\
rmdir /s /q "C:\ProgramData\Microsoft\Windows\ClipSvc" %nul%

if exist "%ProgramData%\Microsoft\Windows\ClipSVC\" (
call :_color %Red% "[Failed]"
) else (
echo [Successful]
)

echo:
echo Rebuilding Folder %ProgramData%\Microsoft\Windows\ClipSVC\
%psc% Start-Service ClipSVC %nul%
timeout /t 3 %nul%
if not exist "%ProgramData%\Microsoft\Windows\ClipSVC\" timeout /t 5 %nul%
if not exist "%ProgramData%\Microsoft\Windows\ClipSVC\" (
call :_color %Red% "[Failed]"
) else (
echo [Successful]
)
)

echo:
echo Restarting [wlidsvc LicenseManager] services...
for %%# in (wlidsvc LicenseManager) do (%psc% Restart-Service %%# %nul%)

::========================================================================================================================================

::  Find remnants of Office vNext license block and remove it because it stops non vNext licenses from appearing
::  https://learn.microsoft.com/en-us/office/troubleshoot/activation/reset-office-365-proplus-activation-state

:cleanvnext

echo:
echo %line%
echo:
call :_color %Blue% "Clearing Office vNext License"
echo:

setlocal DisableDelayedExpansion
set "_Local=%LocalAppData%"
setlocal EnableDelayedExpansion

attrib -R "!ProgramData!\Microsoft\Office\Licenses" %nul%
attrib -R "!_Local!\Microsoft\Office\Licenses" %nul%

if exist "!ProgramData!\Microsoft\Office\Licenses\" (
rd /s /q "!ProgramData!\Microsoft\Office\Licenses\" %nul%
if exist "!ProgramData!\Microsoft\Office\Licenses\" (
echo Failed To Delete - !ProgramData!\Microsoft\Office\Licenses\
) else (
echo Deleted Folder - !ProgramData!\Microsoft\Office\Licenses\
)
) else (
echo Not Found - !ProgramData!\Microsoft\Office\Licenses\
)

if exist "!_Local!\Microsoft\Office\Licenses\" (
rd /s /q "!_Local!\Microsoft\Office\Licenses\" %nul%
if exist "!_Local!\Microsoft\Office\Licenses\" (
echo Failed To Delete - !_Local!\Microsoft\Office\Licenses\
) else (
echo Deleted Folder - !_Local!\Microsoft\Office\Licenses\
)
) else (
echo Not Found - !_Local!\Microsoft\Office\Licenses\
)


echo:
for /f "tokens=* delims=" %%a in ('%psc% "Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList' | ForEach-Object { Split-Path -Path $_.PSPath -Leaf }" %nul6%') do (if defined _sid (set "_sid=!_sid! HKU\%%a") else (set "_sid=HKU\%%a"))

set regfound=
for %%# in (HKCU !_sid!) do (
for %%A in (
%%#\Software\Microsoft\Office\16.0\Common\Licensing
%%#\Software\Microsoft\Office\16.0\Common\Identity
%%#\Software\Microsoft\Office\16.0\Registration
) do (
reg query %%A %nul% && (
set regfound=1
reg delete %%A /f %nul% && (
echo Deleted Registry - %%A
) || (
echo Failed to Delete - %%A
)
)
)
)
if not defined regfound echo Not Found - Office vNext Registry Keys

::========================================================================================================================================

::  Rebuild SPP Tokens

echo:
echo %line%
echo:
call :_color %Blue% "Rebuilding SPP Licensing Tokens"
echo:

call :scandat check

if not defined token (
call :_color %Red% "tokens.dat file not found."
) else (
echo tokens.dat file: [%token%]
)

echo:
set wpainfo=
for /f "delims=" %%a in ('%psc% "$f=[io.file]::ReadAllText('!_batp!') -split ':wpatest\:.*';iex ($f[1]);" %nul6%') do (set wpainfo=%%a)
echo "%wpainfo%" | find /i "Error Found" %nul% && (
call :_color %Red% "WPA Registry Error: %wpainfo%"
) || (
echo WPA Registry Count: %wpainfo%
)

set tokenstore=
for /f "skip=2 tokens=2*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v TokenStore %nul6%') do call set "tokenstore=%%b"

::  Check sppsvc permissions and apply fixes

if %winbuild% GEQ 10240 (

echo:
echo Checking SPP permission related issues...
call :checkperms

if defined permerror (

mkdir "%tokenstore%" %nul%
set "d=$sddl = 'O:BAG:BAD:PAI(A;OICI;FA;;;SY)(A;OICI;FA;;;BA)(A;OICIIO;GR;;;BU)(A;;FR;;;BU)(A;OICI;FA;;;S-1-5-80-123231216-2592883651-3715271367-3753151631-4175906628)';"
set "d=!d! $AclObject = New-Object System.Security.AccessControl.DirectorySecurity;"
set "d=!d! $AclObject.SetSecurityDescriptorSddlForm($sddl);"
set "d=!d! Set-Acl -Path %tokenstore% -AclObject $AclObject;"
%psc% "!d!" %nul%

for %%# in (
"HKLM:\SYSTEM\WPA_QueryValues, EnumerateSubKeys, WriteKey"
"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform_SetValue"
) do for /f "tokens=1,2 delims=_" %%A in (%%#) do (
set "d=$acl = Get-Acl '%%A';"
set "d=!d! $rule = New-Object System.Security.AccessControl.RegistryAccessRule ('NT Service\sppsvc', '%%B', 'ContainerInherit, ObjectInherit','None','Allow');"
set "d=!d! $acl.ResetAccessRule($rule);"
set "d=!d! $acl.SetAccessRule($rule);"
set "d=!d! Set-Acl -Path '%%A' -AclObject $acl"
%psc% "!d!" %nul%
)

call :checkperms
if defined permerror (
call :_color %Red% "[Failed To Fix]"
) else (
echo [Successfully Fixed]
)
) else (
echo [No Error Found]
)
)

echo:
echo Stopping sppsvc service...
%psc% Stop-Service sppsvc -force %nul%

echo:
call :scandat delete
call :scandat check

if defined token (
echo:
call :_color %Red% "Failed to delete .dat files."
echo:
)

echo:
echo Reinstalling System Licenses [slmgr /rilc]...
cscript //nologo %windir%\system32\slmgr.vbs /rilc %nul%
if %errorlevel% NEQ 0 cscript //nologo %windir%\system32\slmgr.vbs /rilc %nul%
if %errorlevel% EQU 0 (
echo [Successful]
) else (
call :_color %Red% "[Failed]"
)

call :scandat check

echo:
if not defined token (
call :_color %Red% "Failed to rebuilt tokens.dat file."
) else (
echo tokens.dat file was rebuilt successfully.
)

::========================================================================================================================================

::  Rebuild OSPP Tokens

echo:
echo %line%
echo:
call :_color %Blue% "Rebuilding OSPP Licensing Tokens"
echo:

sc qc osppsvc %nul% || (
echo OSPP based Office is not installed
echo Skipping rebuilding OSPP tokens...
goto :repairoffice
)

call :scandatospp check

if not defined token (
call :_color %Red% "tokens.dat file not found."
) else (
echo tokens.dat file: [%token%]
)

echo:
echo Stopping osppsvc service...
%psc% Stop-Service osppsvc -force %nul%

echo:
call :scandatospp delete
call :scandatospp check

if defined token (
echo:
call :_color %Red% "Failed to delete .dat files."
echo:
)

echo:
echo Starting osppsvc service to generate tokens.dat
%psc% Start-Service osppsvc %nul%
call :scandatospp check
if not defined token (
%psc% Stop-Service osppsvc -force %nul%
%psc% Start-Service osppsvc %nul%
timeout /t 3 %nul%
)

call :scandatospp check

echo:
if not defined token (
call :_color %Red% "Failed to rebuilt tokens.dat file."
) else (
echo tokens.dat file was rebuilt successfully.
)

::========================================================================================================================================

:repairoffice

echo:
echo %line%
echo:
call :_color %Blue% "Repairing Office Licenses"
echo:

for /f "skip=2 tokens=2*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PROCESSOR_ARCHITECTURE') do set arch=%%b

if /i "%arch%"=="ARM64" (
echo:
echo ARM64 Windows Found.
echo You need to use repair option in Windows settings for Office.
echo:
start ms-settings:appsfeatures
goto :repairend
)

if /i "%arch%"=="x86" (
set arch=X86
) else (
set arch=X64
)

for %%# in (68 86) do (
for %%A in (msi14 msi15 msi16 c2r14 c2r15 c2r16) do (set %%A_%%#=&set %%Arepair%%#=)
)

set _68=HKLM\SOFTWARE\Microsoft\Office
set _86=HKLM\SOFTWARE\Wow6432Node\Microsoft\Office

reg query %_68%\14.0\CVH /f Click2run /k %nul% && (set "c2r14_68=Office 14.0 C2R x86/x64"  & set "c2r14repair68=")
reg query %_86%\14.0\CVH /f Click2run /k %nul% && (set "c2r14_86=Office 14.0 C2R x86"      & set "c2r14repair86=")

for /f "skip=2 tokens=2*" %%a in ('"reg query %_86%\14.0\Common\InstallRoot /v Path" %nul6%') do if exist "%%b\EntityPicker.dll" (set "msi14_86=Office 14.0 MSI x86"      & set "msi14repair86=%systemdrive%\Program Files (x86)\Common Files\Microsoft Shared\OFFICE14\Office Setup Controller\Setup.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_68%\14.0\Common\InstallRoot /v Path" %nul6%') do if exist "%%b\EntityPicker.dll" (set "msi14_68=Office 14.0 MSI x86/x64"  & set "msi14repair68=%systemdrive%\Program Files\Common Files\microsoft shared\OFFICE14\Office Setup Controller\Setup.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_86%\15.0\Common\InstallRoot /v Path" %nul6%') do if exist "%%b\EntityPicker.dll" (set "msi15_86=Office 15.0 MSI x86"      & set "msi15repair86=%systemdrive%\Program Files (x86)\Common Files\Microsoft Shared\OFFICE15\Office Setup Controller\Setup.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_68%\15.0\Common\InstallRoot /v Path" %nul6%') do if exist "%%b\EntityPicker.dll" (set "msi15_68=Office 15.0 MSI x86/x64"  & set "msi15repair68=%systemdrive%\Program Files\Common Files\microsoft shared\OFFICE15\Office Setup Controller\Setup.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_86%\16.0\Common\InstallRoot /v Path" %nul6%') do if exist "%%b\EntityPicker.dll" (set "msi16_86=Office 16.0 MSI x86"      & set "msi16repair86=%systemdrive%\Program Files (x86)\Common Files\Microsoft Shared\OFFICE16\Office Setup Controller\Setup.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_68%\16.0\Common\InstallRoot /v Path" %nul6%') do if exist "%%b\EntityPicker.dll" (set "msi16_68=Office 16.0 MSI x86/x64"  & set "msi16repair68=%systemdrive%\Program Files\Common Files\Microsoft Shared\OFFICE16\Office Setup Controller\Setup.exe")

for /f "skip=2 tokens=2*" %%a in ('"reg query %_86%\15.0\ClickToRun /v InstallPath" %nul6%') do if exist "%%b\root\Licenses\ProPlus*.xrm-ms" (set "c2r15_86=Office 15.0 C2R x86"      & set "c2r15repair86=%systemdrive%\Program Files\Microsoft Office 15\Client%arch%\integratedoffice.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_68%\15.0\ClickToRun /v InstallPath" %nul6%') do if exist "%%b\root\Licenses\ProPlus*.xrm-ms" (set "c2r15_68=Office 15.0 C2R x86/x64"  & set "c2r15repair68=%systemdrive%\Program Files\Microsoft Office 15\Client%arch%\integratedoffice.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_86%\ClickToRun /v InstallPath" %nul6%') do if exist "%%b\root\Licenses16\ProPlus*.xrm-ms"    (set "c2r16_86=Office 16.0 C2R x86"      & set "c2r16repair86=%systemdrive%\Program Files\Microsoft Office 15\Client%arch%\OfficeClickToRun.exe")
for /f "skip=2 tokens=2*" %%a in ('"reg query %_68%\ClickToRun /v InstallPath" %nul6%') do if exist "%%b\root\Licenses16\ProPlus*.xrm-ms"    (set "c2r16_68=Office 16.0 C2R x86/x64"  & set "c2r16repair68=%systemdrive%\Program Files\Microsoft Office 15\Client%arch%\OfficeClickToRun.exe")

set uwp16=
if %winbuild% GEQ 10240 (
%psc% "Get-AppxPackage -name "Microsoft.Office.Desktop"" | find /i "Office" %nul1% && set uwp16=Office 16.0 UWP
)

set /a counter=0
echo Checking installed Office versions...
echo:

for %%# in (
"%msi14_68%"
"%msi14_86%"
"%msi15_68%"
"%msi15_86%"
"%msi16_68%"
"%msi16_86%"
"%c2r14_68%"
"%c2r14_86%"
"%c2r15_68%"
"%c2r15_86%"
"%c2r16_68%"
"%c2r16_86%"
"%uwp16%"
) do (
if not "%%#"=="""" (
set insoff=%%#
set insoff=!insoff:"=!
echo [!insoff!]
set /a counter+=1
)
)

if %counter% GTR 1 (
%eline%
echo Multiple office versions found.
echo It's recommended to install only one version of office.
echo ________________________________________________________________
echo:
)

if %counter% EQU 0 (
echo:
echo Installed Office is not found.
goto :repairend
echo:
) else (
echo:
call :_color %_Yellow% "A Window will popup, in that Window you need to select [Quick] Repair Option..."
call :_color %_Yellow% "Press any key to continue..."
echo:
pause %nul1%
)

if defined uwp16 (
echo:
echo Note: Skipping repair for Office 16.0 UWP. 
echo       You need to use reset option in Windows settings for it.
echo ________________________________________________________________
echo:
start ms-settings:appsfeatures
)

set c2r14=
if defined c2r14_68 set c2r14=1
if defined c2r14_86 set c2r14=1

if defined c2r14 (
echo:
echo Note: Skipping repair for Office 14.0 C2R 
echo       You need to use Repair option in Windows settings for it.
echo ________________________________________________________________
echo:
start appwiz.cpl
)

if defined msi14_68 if exist "%msi14repair68%" echo Running - "%msi14repair68%"                    & "%msi14repair68%"
if defined msi14_86 if exist "%msi14repair86%" echo Running - "%msi14repair86%"                    & "%msi14repair86%"
if defined msi15_68 if exist "%msi15repair68%" echo Running - "%msi15repair68%"                    & "%msi15repair68%"
if defined msi15_86 if exist "%msi15repair86%" echo Running - "%msi15repair86%"                    & "%msi15repair86%"
if defined msi16_68 if exist "%msi16repair68%" echo Running - "%msi16repair68%"                    & "%msi16repair68%"
if defined msi16_86 if exist "%msi16repair86%" echo Running - "%msi16repair86%"                    & "%msi16repair86%"
if defined c2r15_68 if exist "%c2r15repair68%" echo Running - "%c2r15repair68%" REPAIRUI RERUNMODE & "%c2r15repair68%" REPAIRUI RERUNMODE
if defined c2r15_86 if exist "%c2r15repair86%" echo Running - "%c2r15repair86%" REPAIRUI RERUNMODE & "%c2r15repair86%" REPAIRUI RERUNMODE
if defined c2r16_68 if exist "%c2r16repair68%" echo Running - "%c2r16repair68%" scenario=Repair    & "%c2r16repair68%" scenario=Repair
if defined c2r16_86 if exist "%c2r16repair86%" echo Running - "%c2r16repair86%" scenario=Repair    & "%c2r16repair86%" scenario=Repair

:repairend

echo:
echo %line%
echo:
echo:
call :_color %Green% "Finished"
goto :at_back
choice /c yn /n /m "注意！这将可能使你的电脑变为未激活状态，是否继续？（y/n）"
if "%errorlevel%"=="1" goto upky
if "%errorlevel%"=="2" goto upkn
goto begin

:upky
echo 正在清除激活信息，尝试卸载盗版激活.....
pause
slmgr.vbs -upk >nul
slmgr.vbs -ckms >nul
slmgr.vbs /rearm >nul
slmgr.vbs -cpky >nul
slmgr.vbs -upk >nul 
echo msgbox "密钥信息清理完毕",64,"密钥管理工具">alert.vbs && start alert.vbs && ping -n 2 127.1>nul && del alert.vbs
goto begin

:upkn
echo msgbox "操作被取消",64,"密钥管理工具">alert.vbs && start alert.vbs && ping -n 2 127.1>nul && del alert.vbs
goto begin

:skms
cls
echo 请输入KMS服务器地址
set /p kms=
slmgr /skms "%kms%"
pause
goto begin

:cpky
slui 4
goto begin


::cpky
cls
choice /c yn /n /m "注意！这将可能使你的电脑变为未激活状态，是否继续？（y/n）"
if "%errorlevel%"=="1" goto cpkyy
if "%errorlevel%"=="2" goto cpkyn
goto begin

:cpkyy
echo 即将清理密钥信息

slmgr.vbs -cpky
slmgr.vbs -upk
echo msgbox "密钥信息清理完毕",64,"密钥管理工具">alert.vbs && start alert.vbs && ping -n 2 127.1>nul && del alert.vbs
goto begin

:cpkyn
echo msgbox "操作被取消",64,"密钥管理工具">alert.vbs && start alert.vbs && ping -n 2 127.1>nul && del alert.vbs
goto begin

:exit
exit

:xpr
title 检查Windows激活状态
cls
echo %line2%
echo ***                   Windows 激活状态                     ***
echo %line2%
if not defined cW1nd0ws (
echo.
echo 未找到产品密钥
goto :casWend
)
set winID=1
set "_qr=%_zz7% %wspp% %_zz2% %_zz5%ApplicationID='%winApp%' and PartialProductKey is not null%_zz6% %_zz3% ID %_zz8%"
for /f "tokens=2 delims==" %%# in ('%_qr%') do (
  set "chkID=%%#"
  call :casWdet "%wspp%" "%wsps%" "%spp_get%"
  call :casWout
  echo %line3%
  echo.
)

goto :casWend

:casWpkey
set "_qr=%_zz1% %1 %_zz2% %_zz5%ApplicationID='%2' and PartialProductKey is not null%_zz6% %_zz3% ID %_zz4%"
%_qr% 2>nul | findstr /i ID 1>nul && (set %3=1&set %4=1)
exit /b

:casWdet
for %%# in (%~3) do set "%%#="
if /i %~1==%ospp% for %%# in (DiscoveredKeyManagementServiceMachineIpAddress, KeyManagementServiceLookupDomain, ProductKeyChannel, VLActivationTypeEnabled) do set "%%#="
set "cKmsClient="
set "cTblClient="
set "cAvmClient="
set "ExpireMsg="
set "_xpr="
set "_qr="wmic path %~1 where ID='%chkID%' get %~3 /value" ^| findstr ^="
if %WMI_VBS% NEQ 0 set "_qr=%_csg% %~1 "ID='%chkID%'" "%~3""
for /f "tokens=* delims=" %%# in ('%_qr%') do set "%%#"

set /a _gpr=(GracePeriodRemaining+1440-1)/1440
echo %Description%| findstr /i VOLUME_KMSCLIENT 1>nul && (set cKmsClient=1&set _mTag=Volume)
echo %Description%| findstr /i TIMEBASED_ 1>nul && (set cTblClient=1&set _mTag=Timebased)
echo %Description%| findstr /i VIRTUAL_MACHINE_ACTIVATION 1>nul && (set cAvmClient=1&set _mTag=Automatic VM)
cmd /c exit /b %LicenseStatusReason%
set "LicenseReason=%=ExitCode%"
set "LicenseMsg=Time remaining: %GracePeriodRemaining% minute(s) (%_gpr% day(s))"
if %_gpr% GEQ 1 if %_WSH% EQU 1 (
for /f "tokens=* delims=" %%# in ('%_csx% %GracePeriodRemaining%') do set "_xpr=%%#"
)
if %_gpr% GEQ 1 if %_prsh% EQU 1 if not defined _xpr (
for /f "tokens=* delims=" %%# in ('%_psc% "$([DateTime]::Now.addMinutes(%GracePeriodRemaining%)).ToString('yyyy-MM-dd HH:mm:ss')" 2^>nul') do set "_xpr=%%#"
title Check Activation Status [wmi]
)

if %LicenseStatus% EQU 0 (
set "License=Unlicensed"
set "LicenseMsg="
)
if %LicenseStatus% EQU 1 (
set "License=Licensed"
set "LicenseMsg="
if %GracePeriodRemaining% EQU 0 (
  if %winID% EQU 1 (set "ExpireMsg=此设备已永久激活.") else (set "ExpireMsg=产品已经永久激活.")
  ) else (
  set "LicenseMsg=%_mTag% activation expiration: %GracePeriodRemaining% minute(s) (%_gpr% day(s))"
  if defined _xpr set "ExpireMsg=%_mTag% activation will expire %_xpr%"
  )
)
if %LicenseStatus% EQU 2 (
set "License=Initial grace period"
if defined _xpr set "ExpireMsg=Initial grace period ends %_xpr%"
)
if %LicenseStatus% EQU 3 (
set "License=Additional grace period (KMS license expired or hardware out of tolerance)"
if defined _xpr set "ExpireMsg=Additional grace period ends %_xpr%"
)
if %LicenseStatus% EQU 4 (
set "License=Non-genuine grace period."
if defined _xpr set "ExpireMsg=Non-genuine grace period ends %_xpr%"
)
if %LicenseStatus% EQU 6 (
set "License=Extended grace period"
if defined _xpr set "ExpireMsg=Extended grace period ends %_xpr%"
)
if %LicenseStatus% EQU 5 (
set "License=Notification"
  if "%LicenseReason%"=="C004F200" (set "LicenseMsg=Notification Reason: 0xC004F200 (non-genuine)."
  ) else if "%LicenseReason%"=="C004F009" (set "LicenseMsg=Notification Reason: 0xC004F009 (grace time expired)."
  ) else (set "LicenseMsg=Notification Reason: 0x%LicenseReason%"
  )
)
if %LicenseStatus% GTR 6 (
set "License=Unknown"
set "LicenseMsg="
)
if not defined cKmsClient exit /b

if %KeyManagementServicePort%==0 set KeyManagementServicePort=1688
set "KmsReg=Registered KMS machine name: %KeyManagementServiceMachine%:%KeyManagementServicePort%"
if "%KeyManagementServiceMachine%"=="" set "KmsReg=Registered KMS machine name: KMS name not available"

if %DiscoveredKeyManagementServiceMachinePort%==0 set DiscoveredKeyManagementServiceMachinePort=1688
set "KmsDns=KMS machine name from DNS: %DiscoveredKeyManagementServiceMachineName%:%DiscoveredKeyManagementServiceMachinePort%"
if "%DiscoveredKeyManagementServiceMachineName%"=="" set "KmsDns=DNS auto-discovery: KMS name not available"

set "_qr="wmic path %~2 get ClientMachineID, KeyManagementServiceHostCaching /value" ^| findstr ^="
if %WMI_VBS% NEQ 0 set "_qr=%_csg% %~2 "ClientMachineID, KeyManagementServiceHostCaching""
for /f "tokens=* delims=" %%# in ('%_qr%') do set "%%#"
if /i %KeyManagementServiceHostCaching%==True (set KeyManagementServiceHostCaching=Enabled) else (set KeyManagementServiceHostCaching=Disabled)

if %winbuild% LSS 9200 exit /b
if /i %~1==%ospp% exit /b

if "%KeyManagementServiceLookupDomain%"=="" set "KeyManagementServiceLookupDomain="

if %VLActivationTypeEnabled% EQU 3 (
set VLActivationType=Token
) else if %VLActivationTypeEnabled% EQU 2 (
set VLActivationType=KMS
) else if %VLActivationTypeEnabled% EQU 1 (
set VLActivationType=AD
) else (
set VLActivationType=All
)

if %winbuild% LSS 9600 exit /b
if "%DiscoveredKeyManagementServiceMachineIpAddress%"=="" set "DiscoveredKeyManagementServiceMachineIpAddress=not available"
exit /b

:casWout
echo.
echo Windows版本 : %Name%
echo 描述 : %Description%
echo 激活ID : %ID%
echo 扩展PID : %ProductKeyID%
if defined ProductKeyChannel echo 产品密钥通道 : %ProductKeyChannel%
echo 部分产品密钥 : %PartialProductKey%
echo 许可证状态 : %License%
if defined LicenseMsg echo %LicenseMsg%
if not %LicenseStatus%==0 if not %EvaluationEndDate:~0,8%==16010101 echo 评估结束日期 : %EvaluationEndDate:~0,4%-%EvaluationEndDate:~4,2%-%EvaluationEndDate:~6,2% %EvaluationEndDate:~8,2%:%EvaluationEndDate:~10,2% UTC
if not defined cKmsClient (
if defined ExpireMsg echo.&echo.    %ExpireMsg%
exit /b
)
if defined VLActivationTypeEnabled echo 激活种类 : %VLActivationType%
echo.
if not %LicenseStatus%==1 (
echo 请激活产品来刷新KMS主机信息.
exit /b
)
echo 最近的激活信息:
echo 密钥管理客户端信息
echo.    客户端设备ID (CMID): %ClientMachineID%
echo.    %KmsDns%
echo.    %KmsReg%
if defined DiscoveredKeyManagementServiceMachineIpAddress echo.    KMS主机IP: %DiscoveredKeyManagementServiceMachineIpAddress%
echo.    KMS 主机扩展 PID: %KeyManagementServiceProductKeyID%
echo.    激活间隔: %VLActivationInterval% minutes
echo.    续订间隔: %VLRenewalInterval% minutes
echo.    K.M.S host caching: %KeyManagementServiceHostCaching%
if defined KeyManagementServiceLookupDomain echo.    KMS SRV record lookup domain: %KeyManagementServiceLookupDomain%
if defined ExpireMsg echo.&echo.    %ExpireMsg%
exit /b

:casWend

echo 按下任意键来回到主菜单.
pause >nul
goto begin 

:vNextDiag:
function PrintModePerPridFromRegistry
{
	$vNextRegkey = "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\Licensing\LicensingNext"
	$vNextPrids = Get-Item -Path $vNextRegkey -ErrorAction Ignore | Select-Object -ExpandProperty 'property' | Where-Object -FilterScript {$_.ToLower() -like "*retail" -or $_.ToLower() -like "*volume"}
	If ($vNextPrids -Eq $null)
	{
		Write-Host "No registry keys found."
		Return
	}
	$vNextPrids | ForEach `
	{
		$mode = (Get-ItemProperty -Path $vNextRegkey -Name $_).$_
		Switch ($mode)
		{
			2 { $mode = "vNext"; Break }
			3 { $mode = "Device"; Break }
			Default { $mode = "Legacy"; Break }
		}
		Write-Host $_ = $mode
	}
}
function PrintSharedComputerLicensing
{
	$scaRegKey = "HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration"
	$scaValue = Get-ItemProperty -Path $scaRegKey -ErrorAction Ignore | Select-Object -ExpandProperty "SharedComputerLicensing" -ErrorAction Ignore
	$scaRegKey2 = "HKLM:\SOFTWARE\Microsoft\Office\16.0\Common\Licensing"
	$scaValue2 = Get-ItemProperty -Path $scaRegKey2 -ErrorAction Ignore | Select-Object -ExpandProperty "SharedComputerLicensing" -ErrorAction Ignore
	$scaPolicyKey = "HKLM:\SOFTWARE\Policies\Microsoft\Office\16.0\Common\Licensing"
	$scaPolicyValue = Get-ItemProperty -Path $scaPolicyKey -ErrorAction Ignore | Select-Object -ExpandProperty "SharedComputerLicensing" -ErrorAction Ignore
	If ($scaValue -Eq $null -And $scaValue2 -Eq $null -And $scaPolicyValue -Eq $null)
	{
		Write-Host "No registry keys found."
		Return
	}
	$scaModeValue = $scaValue -Or $scaValue2 -Or $scaPolicyValue
	If ($scaModeValue -Eq 0)
	{
		$scaMode = "Disabled"
	}
	If ($scaModeValue -Eq 1)
	{
		$scaMode = "Enabled"
	}
	Write-Host "SharedComputerLicensing" = $scaMode
	Write-Host
	$tokenFiles = $null
	$tokenPath = "${env:LOCALAPPDATA}\Microsoft\Office\16.0\Licensing"
	If (Test-Path $tokenPath)
	{
		$tokenFiles = Get-ChildItem -Path $tokenPath -Recurse -File -Filter "*authString*"
	}
	If ($tokenFiles.length -Eq 0)
	{
		Write-Host "No tokens found."
		Return
	}
	$tokenFiles | ForEach `
	{
		$tokenParts = (Get-Content -Encoding Unicode -Path $_.FullName).Split('_')
		$output = [PSCustomObject] `
			@{
				ACID = $tokenParts[0];
				User = $tokenParts[3]
				NotBefore = $tokenParts[4];
				NotAfter = $tokenParts[5];
			} | ConvertTo-Json
		Write-Host $output
	}
}
function PrintLicensesInformation
{
	Param(
		[ValidateSet("NUL", "Device")]
		[String]$mode
	)
	If ($mode -Eq "NUL")
	{
		$licensePath = "${env:LOCALAPPDATA}\Microsoft\Office\Licenses"
	}
	ElseIf ($mode -Eq "Device")
	{
		$licensePath = "${env:PROGRAMDATA}\Microsoft\Office\Licenses"
	}
	$licenseFiles = $null
	If (Test-Path $licensePath)
	{
		$licenseFiles = Get-ChildItem -Path $licensePath -Recurse -File
	}
	If ($licenseFiles.length -Eq 0)
	{
		Write-Host "No licenses found."
		Return
	}
	$licenseFiles | ForEach `
	{
		$license = (Get-Content -Encoding Unicode $_.FullName | ConvertFrom-Json).License
		$decodedLicense = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($license)) | ConvertFrom-Json
		$licenseType = $decodedLicense.LicenseType
		If ($null -Ne $decodedLicense.ExpiresOn)
		{
			$expiry = [DateTime]::Parse($decodedLicense.ExpiresOn, $null, 48)
		}
		Else
		{
			$expiry = New-Object DateTime
		}
		$licenseState = $null
		If ((Get-Date) -Gt (Get-Date $decodedLicense.MetaData.NotAfter))
		{
			$licenseState = "RFM"
		}
		ElseIf ((Get-Date) -Lt (Get-Date $expiry))
		{
			$licenseState = "Licensed"
		}
		Else
		{
			$licenseState = "Grace"
		}
		if ($mode -Eq "NUL")
		{
			$output = [PSCustomObject] `
			@{
				Version = $_.Directory.Name
				Type = "User|${licenseType}";
				Product = $decodedLicense.ProductReleaseId;
				Acid = $decodedLicense.Acid;
				LicenseState = $licenseState;
				EntitlementStatus = $decodedLicense.Status;
				EntitlementExpiration = $decodedLicense.ExpiresOn;
				ReasonCode = $decodedLicense.ReasonCode;
				NotBefore = $decodedLicense.Metadata.NotBefore;
				NotAfter = $decodedLicense.Metadata.NotAfter;
				NextRenewal = $decodedLicense.Metadata.RenewAfter;
				TenantId = $decodedLicense.Metadata.TenantId;
			} | ConvertTo-Json
		}
		ElseIf ($mode -Eq "Device")
		{
			$output = [PSCustomObject] `
			@{
				Version = $_.Directory.Name
				Type = "Device|${licenseType}";
				Product = $decodedLicense.ProductReleaseId;
				Acid = $decodedLicense.Acid;
				DeviceId = $decodedLicense.Metadata.DeviceId;
				LicenseState = $licenseState;
				EntitlementStatus = $decodedLicense.Status;
				EntitlementExpiration = $decodedLicense.ExpiresOn;
				ReasonCode = $decodedLicense.ReasonCode;
				NotBefore = $decodedLicense.Metadata.NotBefore;
				NotAfter = $decodedLicense.Metadata.NotAfter;
				NextRenewal = $decodedLicense.Metadata.RenewAfter;
				TenantId = $decodedLicense.Metadata.TenantId;
			} | ConvertTo-Json
		}
		Write-Output $output
	}
}
	Write-Host
	Write-Host "========== Mode per ProductReleaseId =========="
	Write-Host
PrintModePerPridFromRegistry
	Write-Host
	Write-Host "========== Shared Computer Licensing =========="
	Write-Host
PrintSharedComputerLicensing
	Write-Host
	Write-Host "========== vNext licenses =========="
	Write-Host
PrintLicensesInformation -Mode "NUL"
	Write-Host
	Write-Host "========== Device licenses =========="
	Write-Host
PrintLicensesInformation -Mode "Device"


:fix

:dism_rest

cls
mode 98, 30
title  Dism /English /Online /Cleanup-Image /RestoreHealth

if %winbuild% LSS 9200 (
%eline%
echo 发现不受支持的系统
echo 本工具只支持 Windows 8/8.1/10/11 及其对应的服务器版本
goto :at_back
)

set _int=
for %%a in (l.root-servers.net resolver1.opendns.com download.windowsupdate.com google.com) do if not defined _int (
for /f "delims=[] tokens=2" %%# in ('ping -n 1 %%a') do (if not [%%#]==[] set _int=1)
)

echo:
if defined _int (
echo      检查网络连接  [已连接]
) else (
echo        检查网络连接  [未连接]
)

echo %line3%
echo:
echo     我们将会使用Windows 更新来尝试修复文件损坏
echo      这可能需要至少5-15分钟时间..
echo %line3%
echo:
echo      请注意:
echo:
echo                    确保网络通畅
echo                    确保Windows update正常工作
echo:
echo %line3%
echo:
choice /C:09 /N /M ">    [9] 继续 [0] 返回 : "
if %errorlevel%==1 goto begin 

cls
mode 110, 30
%psc% Stop-Service TrustedInstaller -force %nul%

set _time=
for /f %%a in ('%psc% "Get-Date -format HH_mm_ss"') do set _time=%%a
echo:
echo Applying the command,
echo dism /english /online /cleanup-image /restorehealth
dism /english /online /cleanup-image /restorehealth

%psc% Stop-Service TrustedInstaller -force %nul%

if not exist "!desktop!\AT_Logs\" md "!desktop!\AT_Logs\" %nul%

call :compresslog cbs\CBS.log RHealth_CBS %nul%
call :compresslog DISM\dism.log RHealth_DISM %nul%

if not exist "!desktop!\AT_Logs\RHealth_CBS_%_time%.cab" (
copy /y /b "%SystemRoot%\logs\cbs\cbs.log" "!desktop!\AT_Logs\RHealth_CBS_%_time%.log" %nul%
)

if not exist "!desktop!\AT_Logs\RHealth_DISM_%_time%.cab" (
copy /y /b "%SystemRoot%\logs\DISM\dism.log" "!desktop!\AT_Logs\RHealth_DISM_%_time%.log" %nul%
)

echo:
call :_color %Gray% "CBS and DISM logs are copied to the AT_Logs folder on the dekstop."
goto :sfcscan

::========================================================================================================================================

:sfcscan

cls
mode 98, 30
title  sfc /scannow

echo:
echo %line3%
echo:    
echo      系统文件管理器将会检查并修复文件错误
echo      这将会消耗5-10分钟或更多时间
echo:
echo      如果错误并未修复，请重试一次
echo      有时候可能需要重试最多3次才能修复
echo      每次修复以后请重启系统再进行下一次的修复
echo:   
echo %line3%
echo:
choice /C:09 /N /M ">    [9] 继续 [0] 返回 : "
if %errorlevel%==1 goto fix

cls
%psc% Stop-Service TrustedInstaller -force %nul%

set _time=
for /f %%a in ('%psc% "Get-Date -format HH_mm_ss"') do set _time=%%a
echo:
echo Applying the command,
echo.
sfc /scannow

%psc% Stop-Service TrustedInstaller -force %nul%

if not exist "!desktop!\AT_Logs\" md "!desktop!\AT_Logs\" %nul%

call :compresslog cbs\CBS.log SFC_CBS %nul%

if not exist "!desktop!\AT_Logs\SFC_CBS_%_time%.cab" (
copy /y /b "%SystemRoot%\logs\cbs\cbs.log" "!desktop!\AT_Logs\SFC_CBS_%_time%.log" %nul%
)

echo:
call :_color %Gray% "CBS log is copied to the AT_Logs folder on the dekstop."
echo                  === 已经完成系统修复! === 
echo   是否要继续卸载当前设备的许可证信息来修复激活错误？
choice /C:09 /N /M ">    [9] 是 [0] 否 : "
if %errorlevel%==1 goto begin 
if %errorlevel%==2 goto fix

