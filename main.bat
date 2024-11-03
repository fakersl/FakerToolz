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

:banner
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
echo.       %w%                           %p%[%w%4%p%]%w% Limpeza no PC                %p%[%w%5%p%]%w% Tweaks Memória        %p%[%w%6%p%]%w% Desabilitar Inicialização de Apps
echo.       %w%                                                                                                                  	
echo.       %w%                           %p%[%w%7%p%]%w% Tweaks GPU                   %p%[%w%8%p%]%w% Tweaks CPU            %p%[%w%9%p%]%w% Tweaks USB                                  
echo.       %w%                                                                                                                    	
echo.       %w%                           %p%[%w%10%p%]%w% Tweaks Energia              %p%[%w%12%p%]%w% Tweaks Armazenamento    
echo.       %w%                                                                                                                     	
echo.       %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.       %w%                                                                                                                     	
echo.       %w%                           %p%[%w%E%p%]%w% Reverts                                                                %p%[%w%R%p%]%w% Usar Ponto de Restauração                                             
echo.       %w%                                                                                                                                          
echo.       %w%                                                            Feito por fakersl 2024 %b%║ :D ║%w% v0.1                                         
echo.       %w%                                                                                                                  	
echo.       %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p option="Escolha uma opção: "

if "%option%"=="1" (
    echo Selecionado: Tweaks CPU
    rem Aqui você pode adicionar o código para fazer tweaks na CPU
) else if "%option%"=="2" (
    echo Selecionado: Tweaks PC
    rem Aqui você pode adicionar o código para fazer tweaks no PC
) else if "%option%"=="3" (
    echo Selecionado: Tweaks GPU
    rem Aqui você pode adicionar o código para fazer tweaks na GPU
) else if "%option%"=="4" (
    echo Selecionado: Tweaks Energia
    rem Aqui você pode adicionar o código para fazer tweaks de energia
) else if "%option%"=="5" (
    echo Selecionado: Desabilitar Apps De Inicialização
    rem Aqui você pode adicionar o código para desabilitar apps de inicialização
) else if "%option%"=="6" (
    echo Selecionado: Tweaks Memória
    rem Aqui você pode adicionar o código para fazer tweaks na memória
) else if "%option%"=="7" (
    echo Selecionado: Tweaks Mouse e Teclado
    rem Aqui você pode adicionar o código para fazer tweaks no mouse e teclado
) else if "%option%"=="8" (
    echo Selecionado: Tweaks Gerais
    rem Aqui você pode adicionar o código para fazer tweaks gerais
) else if "%option%"=="9" (
    echo Saindo...
    exit
) else (
    echo Opção inválida. Tente novamente.
)

pause
goto menu
