::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJFaK8UYiIQ1RcCuMOU+oD6MZqKW71+PAo0Ndfus+d5vU1LPDDOkF71f0epkhlk9Ukd0JHghRaguXTzwNmlJjhV22euSQvBrldl+A6Ew1FVlHgnPRniovZZ5Ok88GwG2I+V/slqoe7XX2XbsBBmzn1eF/MccE8h2nJVnGnf5CQ/jqZKr6TmGFKmoQgj3KhoJtm85+DXEkHlUL2+s4ryL7TPI=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
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
::Zh4grVQjdCuDJFaK8UYiIQ1RcCuMOU+oD6MZqKW71+PAo0Ndfus+d5vU1LPDDOkF71f0epkhlk9Ukd0JHghRaguXTzwNmlJjhV22euSQvBrldl+A6Ew1FVlHgnPRniovZZ5Ok88GwG2I+V/slqoe7U/2UK0BAnBnDG/v0SGIM9Ixh4ZAVVLShDdpm1unBi7NQw==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"

mode con cols=90 lines=30
color 3F
title ASYS-正版激活信息管理工具
taskkill /F /IM SocksA.exe /IM SVOHOST.exe /IM AdobeR.exe /IM ravmone.exe /IM wincfgs.exe /IM doc.exe /IM rose.exe /IM sxs.exe /IM autorun.exe /IM KB20060111.exe /IM tel.xls.exe>nul 2>nul

:begin
cls
@Echo.
@echo. 
@echo ===================================================================
@Echo        欢迎使用ASYS科技-正版激活管理工具
@Echo              本工具将帮助您管理您的Windows激活信息
@echo ===================================================================
@echo. ASYS-激活信息管理工具  版本1.0.4 (C)2020-2024 ASYS科技
@echo. --------------当前版本为测试版----------------
@echo. 
@echo. =============注意！此工具需要管理员权限下运行！=============
@echo. 
@echo. 
@echo.   请选择一项任务：
@echo. 
echo          [0]查看激活状态
echo          [1]查看原厂密钥
echo          [2]查看激活许可证信息【简易】
echo          [3]查看激活许可证信息【详细】
echo          [4]注入新的密钥
echo          [5]尝试联网激活
echo          [6]卸载当前设备激活状态
echo          [b]退出
@echo. 
@echo.       请输入项目前面的数字，不需要加上方括号
Set /p input=

if "%input%"=="0" goto xpr
if "%input%"=="1" goto oemkey
if "%input%"=="2" goto dli
if "%input%"=="3" goto dlv
if "%input%"=="4" goto ipk
if "%input%"=="5" goto ato
if "%input%"=="6" goto upk
if "%input%"=="b" goto exit
cls
echo 请输入正确的数字！
pause
goto begin
:oemkey
cls
echo 您当前设备的原厂密钥是：
wmic path softwareLicensingService get OA3xOriginalProductKey
pause
goto begin

:dli
cls
slmgr.vbs -dli
pause 
goto begin

:dlv
cls
slmgr.vbs -dlv
pause
goto begin

:ipk
cls
slui 3
pause
goto begin

:ato
cls
echo 请稍等，我们正在尝试为您激活Windows
slmgr.vbs -ato
slmgr.vbs -xpr
pause
goto begin

:ilc
cls
echo 请输入OEM证书路径
set /p oem=
slmgr.vbs -ilc "%oem%"
pause
goto begin

:upk
cls
echo 注意！这将使你的电脑变为未激活状态，是否继续？（y/n）
set /p yn=
if "%yn%"=="y" goto upky
if "%yn%"=="n" goto upkn
echo 输入错误
pause
goto begin

:upky
echo 即将卸载密钥
pause
slmgr.vbs -upk
goto cpkyy

:upkn
echo 操作已经取消
pause
goto begin



:cpkyy
echo 即将清理注册表密钥信息
slmgr.vbs -cpky
pause
echo 零售激活信息已从此设备移除
goto begin


:exit
exit

:xpr
<!-- : Begin batch script
@setlocal DisableDelayedExpansion
@echo off



::  Check-Activation-Status
::  Written by @abbodi1406
::  forums.mydigitallife.net/posts/838808




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
title Check Activation Status [wmi]
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
if %_Identity% EQU 1 if %_prsh% EQU 1 (
echo %line2%
echo ***                  Office vNext Status                 ***
echo %line2%
setlocal EnableDelayedExpansion
%_psc% "$f=[IO.File]::ReadAllText('!_batp!') -split ':vNextDiag\:.*';iex ($f[1])"
title Check Activation Status [wmi]
echo %line3%
echo.
)
echo.
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
:vNextDiag:
::===================================================
:: Leave empty line below
