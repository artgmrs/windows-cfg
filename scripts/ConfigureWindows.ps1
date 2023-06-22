# Description: Configuração do ambiente de desenvolvimento no Windows  
# Author: Arthur Guimaraes
# Configurando git 
choco install -y git --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal'"

# Setar development mode no Windows
Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1

# Geral
choco install -y bitwarden
choco install -y obsidian
choco install -y 7zip.install
choco install -y microsoft-teams
choco install -y logioptionsplus
choco install -y spotify

# Dev Tools
choco install -y vscode
choco install -y notepadplusplus
choco install -y FiraCode
choco install -y jetbrainsmono
choco install -y nerdfont-hack
choco install -y lightshot
choco install -y sql-server-management-studio
choco install -y dotnetcore-3.1-sdk
choco install -y dotnet-5.0-sdk
choco install -y dotnet-6.0-sdk
choco install -y nvm
choco install -y postman
choco install -y intellijidea-community

# Baixar Node.Js e npm
nvm install lts
nvm use newest

# Visual Studio
choco install -y visualstudio2022professional --params "--locale En-us --add Microsoft.VisualStudio.Workload.NetWeb Microsoft.VisualStudio.Workload.Data"
Update-SessionEnvironment # Atualizar env por conta da instalação do git
