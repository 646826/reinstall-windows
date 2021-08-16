Set-ExecutionPolicy RemoteSigned -Force
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#User-Tool
choco install Notepadplusplus -y --force
choco install 7zip -y --force
# choco install GoogleChrome -y --force
choco install vlc -y --force
choco install opera -y --force

#Dev-Tool
# choco install utorrent -y --force
choco install microsoft-visual-cpp-build-tools -y --force
#choco install kind -y --force
#choco install kubernetes-helm -y --force
choco install python -y --force
choco install fiddler -y --force
choco install git -y --force
choco install tortoisegit -y --force
choco install docker-desktop -y --force
choco install nodejs -y --force
choco install postman -y --force
choco install microsoft-teams -y --force
choco install vscode -y --force
choco install pgadmin4 -y --force
choco install sql-server-management-studio -y --force
choco install office365business -y --force
choco install zoom -y --force
choco install microsoftazurestorageexplorer -y --force
choco install visualstudio2019enterprise -y --force
# choco install alcohol52-free -y --force

#Configuration Windows
$key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty $key Hidden 1 #2 user / 1 dev
Set-ItemProperty $key HideFileExt 0 #0 - dev / 1 - user
Set-ItemProperty $key TaskbarSmallIcons 1
Set-ItemProperty $key DisablePreviewDesktop 1
Set-ItemProperty $key AutoCheckSelect 0

$key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search"
Set-ItemProperty $key SearchboxTaskbarMode 0

$key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty $key ShowTaskViewButton 0
Set-ItemProperty $key TaskbarSmallIcons 1

$key = "HKCU:\Software\Policies\Microsoft\Windows\Explorer"
Md $key
New-ItemProperty $key -Name "DisableNotificationCenter" -Value 1 -PropertyType "DWord"
$key = "HKLM:\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell"
Set-ItemProperty $key UseActionCenterExperience 0
