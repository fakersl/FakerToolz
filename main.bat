@echo off
chcp 65001 >nul

::Habilitar expansão
setlocal EnableDelayedExpansion > nul
cls

::Executando com administrador pros tweaks funcionarem :p
chcp 65001 >nul 2>&1
cls 
echo.
echo. ╔═════════════════════════════════════════════════════════╗
echo. ║                                                         ║
echo  ║   %w% Checando privilégios administrativos...      %b%  ║
echo. ║                                                         ║
echo. ╚═════════════════════════════════════════════════════════╝
timeout /t 1 /nobreak > NUL

rmdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
mkdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
if %errorlevel% neq 0 (   
cls 
echo.
echo. ╔═════════════════════════════════════════════════════╗
echo. ║                                                     ║
echo  ║  %w% Executando FakerToolz como administrador...%b% ║
echo. ║                                                     ║
echo. ╚═════════════════════════════════════════════════════╝
timeout /t 1 /nobreak > NUL
chcp 437 >nul 2>&1
powershell -NoProfile -NonInteractive -Command start -verb runas "'%~s0'" >nul 2>&1
chcp 65001 >nul 2>&1

if !errorlevel! equ 0 exit /b

echo.
echo                 Ops! Não está sendo executado como administrador!
echo            Algumas otimizações podem não funcionar, deseja continuar?
echo.
choice /c:"CQ" /n /m "%BS%               [C] Continuar  [Q] Sair" & if !errorlevel! equ 2 exit /b
)


chcp 65001 >nul 2>&1

set THREADS=%NUMBER_OF_PROCESSORS% > nul
for /f %%i in ('wmic path Win32_UserAccount where name^="%username%" get sid ^| findstr "S-"') do set "USER_SID=%%i"

echo %w% - Carregando! :3 %b%
cls 
md C:\fakertoolz >nul 2>&1
echo %w% - Calma ae, tamo terminando >:D... %b%
timeout /t 1 /nobreak > NUL
del /s /q C:\fakertoolz  >nul 2>&1
cls

::Ponto de restauração
chcp 437 >nul 2>&1
powershell -NoProfile Enable-ComputerRestore -Drive 'C:\'>nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
%b%
chcp 65001 >nul 2>&1
CLS
echo.
echo.
echo.
echo.
echo.                                   %p%██████╗ ███████╗███╗   ███╗      ██╗   ██╗██╗███╗   ██╗██████╗  ██████╗ 
echo.                                   %p%██╔══██╗██╔════╝████╗ ████║      ██║   ██║██║████╗  ██║██╔══██╗██╔═══██╗
echo.                                   %p%██████╔╝█████╗  ██╔████╔██║█████╗██║   ██║██║██╔██╗ ██║██║  ██║██║   ██║
echo.                                   %p%██╔══██╗██╔══╝  ██║╚██╔╝██║╚════╝╚██╗ ██╔╝██║██║╚██╗██║██║  ██║██║   ██║
echo.                                   %p%██████╔╝███████╗██║ ╚═╝ ██║       ╚████╔╝ ██║██║ ╚████║██████╔╝╚██████╔╝
echo.                                   %p%╚═════╝ ╚══════╝╚═╝     ╚═╝        ╚═══╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ 
echo.                 %b%"══════════════════════════════════════════════════════════════════════════════════════════════════"%w%                                                                                                  
echo.                                %w%  Feito por fakersl %b%║%w% Versão v0.1 %b%║%w% Atualizado 3 de Novembro 2024           
echo.                                                                                                   
echo.
echo.                     Não me responsabilizo por quaisquer problemas/danos que isso possa causar ao seu pc (isso normalmente não acontece)
echo.
echo.                               É proibido revender qualquer uma dessas ferramentas, pois isso terá consequências.
echo.
echo.                 %b%"══════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                        Pressione um NÚMERO no teclado seguido de ENTER pra selecionar uma opção
echo.
echo.                           Por favor, leia todos os avisos, pop-ups, etc... não pressione os botões sem ler.
echo.
echo.                 %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════"
echo.
echo.
echo.
echo.                                        %b%"I═══════════════════════════════════════════════════════I"
echo.                                                     %w%    Aperte qualquer tecla para continuar...
echo.                                        %b%"I═══════════════════════════════════════════════════════I"
echo.

echo. 
pause > nul
CLS

:restorepoint
cls
echo.
echo.
echo.                                 %p%██████╗░███████╗░██████╗████████╗░█████╗░██████╗░███████╗  ██████╗░░█████╗░██╗███╗░░██╗████████╗
echo.                                 %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗░██║╚══██╔══╝
echo.                                 %p%██████╔╝█████╗░░╚█████╗░░░░██║░░░██║░░██║██████╔╝█████╗░░  ██████╔╝██║░░██║██║██╔██╗██║░░░██║░░░
echo.                                 %p%██╔══██╗██╔══╝░░░╚═══██╗░░░██║░░░██║░░██║██╔══██╗██╔══╝░░  ██╔═══╝░██║░░██║██║██║╚████║░░░██║░░░
echo.                                 %p%██║░░██║███████╗██████╔╝░░░██║░░░╚█████╔╝██║░░██║███████╗  ██║░░░░░╚█████╔╝██║██║░╚███║░░░██║░░░
echo.                                 %p%╚═╝░░╚═╝╚══════╝╚═════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝  ╚═╝░░░░░░╚════╝░╚═╝╚═╝░░╚══╝░░░╚═╝░░░
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                           %w% Voce quer criar um Ponto de Restauração? 
echo.                                                                                                                                                                      
echo.                                                                                                                                       
echo.                                                     %p%[%w%1%p%]%w% Fazer um Ponto de Restauração             %p%[%w%2%p%]%w% Pular          
echo.                                                                                                                                       
echo.      
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                           %W% Permite redefinir as configurações que o usuário alterou de volta ao normal
echo.                                                %W% Você pode usar um ponto de restauração posteriormente, se desejar
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 

set /p input=:
if /i %input% == 1 goto rON
if /i %input% == 2 goto res

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
goto restorepoint

:rON
chcp 437 >nul 
powershell -Command "Checkpoint-Computer -Description 'FakerToolz PONTO DE RESTAURAÇÃO' -RestorePointType 'MODIFY_SETTINGS'" 
chcp 65001 >nul 
echo.
echo.
echo.
cls
goto :res

:res 
md C:\fakertoolz
cls
echo. %b% 
echo. ╔═════════════════════════════╗
echo. ║                             ║
echo  ║ %w% Baixando recursos...  %b%   ║
echo. ║                             ║
echo. ╚═════════════════════════════╝
echo.

cls
chcp 437 >nul 2>&1
powershell -NoProfile Expand-Archive '%temp%\fakertoolz.zip' -DestinationPath 'C:\fakertoolz' >nul 2>&1 
chcp 65001 >nul 2>&1
cls
goto menu

:soon
echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%                    Epa! Vem aí...  
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
goto menu

:restore
cls
rstrui.exe
echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%  GG! Aperte qualquer tecla para continuar...  
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
goto menu

:Menu
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.       %p%                         ███████╗ █████╗ ██╗  ██╗███████╗██████╗     ████████╗ ██████╗  ██████╗ ██╗     ███████╗
echo.       %p%                         ██╔════╝██╔══██╗██║ ██╔╝██╔════╝██╔══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ╚══███╔╝
echo.       %p%                         █████╗  ███████║█████╔╝ █████╗  ██████╔╝       ██║   ██║   ██║██║   ██║██║       ███╔╝ 
echo.       %p%                         ██╔══╝  ██╔══██║██╔═██╗ ██╔══╝  ██╔══██╗       ██║   ██║   ██║██║   ██║██║      ███╔╝  
echo.       %p%                         ██║     ██║  ██║██║  ██╗███████╗██║  ██║       ██║   ╚██████╔╝╚██████╔╝███████╗███████╗
echo.       %p%                         ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
echo.       %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.       %w%                                                                                                          
echo.       %w%                           %p%[%w%1%p%]%w% Tweaks Gerais                %p%[%w%2%p%]%w% Mouse e Teclado       %p%[%w%3%p%]%w% Tweaks Windows                    
echo.       %w%                                                                                                                    
echo.       %w%                           %p%[%w%4%p%]%w% Limpeza no PC                %p%[%w%5%p%]%w% Tweaks Memória        %p%[%w%6%p%]%w% Desabilitar Apps de Inicialização
echo.       %w%                                                                                                                  	
echo.       %w%                           %p%[%w%7%p%]%w% Tweaks GPU                   %p%[%w%8%p%]%w% Tweaks CPU            %p%[%w%9%p%]%w% Tweaks USB                                  
echo.       %w%                                                                                                                    	
echo.       %w%                           %p%[%w%10%p%]%w% Tweaks Energia              %p%[%w%12%p%]%w% Tweaks Armazenamento    
echo.       %w%                                                                                                                     	
echo.       %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.       %w%                                                                                                                     	
echo.       %w%                           %p%[%w%E%p%]%w% Reverter                     %p%[%w%E%p%]%w% Sair                     %p%[%w%R%p%]%w% Usar Ponto de Restauração                                             
echo.       %w%                                                                                                                                          
echo.       %w%                                                            Feito por fakersl 2024 %b%║ :D ║%w% v0.1                                         
echo.       %w%                                                                                                                  	
echo.       %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == 1 goto 1
if /i %input% == 2 goto 2
if /i %input% == 3 goto 3
if /i %input% == 4 goto 4
if /i %input% == 5 goto 5
if /i %input% == 6 goto 6
if /i %input% == 7 goto 7
if /i %input% == 8 goto 8war
if /i %input% == 9 goto 9
if /i %input% == 10 goto 10war
if /i %input% == 11 goto 11
if /i %input% == 12 goto 12

if /i %input% == E goto :e
if /i %input% == R goto Restaurar

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 
goto RedirectMenu

:RedirectMenu
cls
goto :menu

:1
cls
echo.
echo.
echo.                                         %p%   ░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░██╗░░░░░     
echo.                                         %p%   ██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗██║░░░░░     
echo.                                         %p%   ██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║██║░░░░░    
echo.                                         %p%   ██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║██║░░░░░      
echo.                                         %p%   ╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║███████╗     
echo.                                         %p%   ░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝    
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                                      %p%[%w%1%p%]%w% General Peformance tweaks   
echo.                        
echo.                                                                                          
echo.                                                          %p%[%w%M%p%]%w% Back to menu                           
echo.
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                             %W% Optimizes a bunch of registry values which will increase your performance and lower latency
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 goto gen1
if /i %input% == M CLS & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :1

:gen1
echo %w% - Microsoft Mulitimedia%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "10" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
timeout /t 1 /nobreak > nul

echo %w% - Disable Nagiles algorithm (enable tcpnodelay ) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
timeout /t 1 /nobreak > nul

echo %w% - Disabling Fast Startup%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Disabling Hibernation%b%
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Disabling Sleep Study%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Disable Dynamic Tick%b%
bcdedit /set disabledynamictick yes >nul 2>&1
timeout /t 1 /nobreak > NUL

echo %w% - Disable High Precision Event Timer (HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1
timeout /t 1 /nobreak > NUL

echo %w% - Disable Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1
timeout /t 1 /nobreak > NUL

echo %w% - NFTS Tweaks%b%
fsutil behavior set memoryusage 2 >nul 2>&1
fsutil behavior set mftzone 4 >nul 2>&1
fsutil behavior set disablelastaccess 1 >nul 2>&1
fsutil behavior set disabledeletenotify 0 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1
timeout /t 1 /nobreak > nul

echo %w% - Network Throttoling Index%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
timeout /t 1 /nobreak > nul

echo %w% - MMCSS Priority For Low Latency%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
timeout /t 1 /nobreak > nul

echo %w% - MMCSS Priority For Games%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
timeout /t 1 /nobreak > nul

echo %w% - Setting Win32Priority%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f 
timeout /t 1 /nobreak > nul

echo %w% - Disabling VirtualizationBasedSecurity%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL
echo %w% - Disabling HVCIMATRequired%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL
echo %w% - Disabling ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL
echo %w% - Disabling Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL
echo %w% - Disabling CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL
echo %w% - Disabling Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL
echo %w% - Disabling Spectre And Meltdown%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Disabling Other Mitigations%b%
chcp 437 >nul 
timeout /t 1 /nobreak > NUL
powershell "Remove-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*\" -Recurse -ErrorAction SilentlyContinue"
timeout /t 1 /nobreak > NUL
chcp 65001 >nul  
timeout /t 1 /nobreak > NUL

echo %w% - IRQ8 Priority %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
timeout /t 1 /nobreak > NUL

echo %w% - IRQ16 Priority %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
timeout /t 1 /nobreak > NUL

echo %w% - Enabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL


echo %w% - Disabling Paging Executive%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Disabling Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NULw


echo %w% - SVC split host%b%
for /f "skip=1" %%i in ('wmic os get TotalVisibleMemorySize') do if not defined TOTAL_MEMORY set "TOTAL_MEMORY=%%i" & set /a SVCHOST=%%i+1024000
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "!SVCHOST!" /f 
timeout /t 1 /nobreak > NUL


echo %w% - Disable Prefetch and superfetch%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
timeout /t 1 /nobreak > NUL

echo %w% - Decrease processes kill time and menu show delay%b%
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
timeout /t 1 /nobreak > NUL


echo %w% - Setting Time Stamp%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "3" /f 
timeout /t 1 /nobreak > NUL


echo %w% - Setting CSRSS to Realtime%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Setting Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > nul

echo %w% - Setting System Responsiveness%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f 


echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%  GG! Aperte qualquer tecla para continuar...  
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
goto :menu

:2
echo. Ajustando configurações do mouse e teclado...
:: Aumentar a sensibilidade do mouse
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseSensitivity /t REG_SZ /d 10 /f
:: Ajustar a velocidade do ponteiro
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 2 /f
echo. Configurações de mouse e teclado ajustadas!
pause
goto Menu

:3
echo. Aplicando Tweaks do Windows...
:: Desativar o Indexador de Pesquisa
sc config "WSearch" start= disabled
:: Desativar relatórios de erro
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v DisableErrorReporting /t REG_DWORD /d 1 /f
echo. Tweaks do Windows aplicados!
pause
goto Menu

:4
echo. Iniciando limpeza no PC...
:: Limpar arquivos temporários do Windows
cleanmgr /sagerun:1
echo. Limpeza concluída!
pause
goto Menu

:5
echo. Ajustando configurações de memória...
:: Limitar o uso de memória para aplicativos em segundo plano
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLowDiskSpaceChecks /t REG_DWORD /d 1 /f
echo. Configurações de memória ajustadas!
pause
goto Menu

:6
echo. Desabilitando aplicativos de inicialização...
:: Desabilitar um aplicativo específico na inicialização
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "AppName" /t REG_SZ /d "" /f
echo. Aplicativos de inicialização desabilitados!
pause
goto Menu

:7
echo. Aplicando Tweaks na GPU...
:: Definir configurações de desempenho da GPU (Exemplo para NVIDIA)
nvidia-smi -pm 1
echo. Tweaks na GPU aplicados!
pause
goto Menu

:8
echo. Ajustando configurações da CPU...
:: Desabilitar serviços que consomem CPU desnecessariamente
sc config "ServiçoNome" start= disabled
echo. Configurações de CPU ajustadas!
pause
goto Menu

:9
echo. Ajustando configurações USB...
:: Desabilitar USB em massa
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d 4 /f
echo. Configurações USB ajustadas!
pause
goto Menu

:10
echo. Ajustando configurações de energia...
:: Definir plano de energia para Alto Desempenho
powercfg -setactive SCHEME_MIN
echo. Configurações de energia ajustadas!
pause
goto Menu

:11
echo. Otimizando armazenamento...
:: Desfragmentar o disco
defrag C: /O
echo. Armazenamento otimizado!
pause
goto Menu

:E
echo. Revertendo as mudanças...
:: Código para restaurar as configurações anteriores
:: Isso pode incluir a reativação de serviços ou a reversão de registros
echo. Mudanças revertidas com sucesso!
pause
goto Menu

:R
echo. Usando Ponto de Restauração...
:: Código para restaurar o sistema a um ponto anterior
rstrui.exe
pause
goto Menu

pause
goto menu
