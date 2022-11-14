Set-ExecutionPolicy -Scope CurrentUser Bypass
#update windows
#update store apps


#winget
#Add msstore as trusted resource

#Install apps
winget install -e --id Microsoft.VisualStudioCode -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id qBittorrent.qBittorrent -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.PowerToys -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Logitech.GHUB -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Google.Drive -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Nvidia.GeForceExperience -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id EpicGames.EpicGamesLauncher -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Samsung.DeX -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.DotNet.DesktopRuntime.6 -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id ShareX.ShareX -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id 7zip.7zip -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id CodecGuide.K-LiteCodecPack.Basic -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.VC++2013Redist-x64 -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.VC++2010Redist-x64 -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.VC++2015-2022Redist-x64 -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Valve.Steam -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id TeamViewer.TeamViewer -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Corsair.iCUE.4 -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id JAMSoftware.TreeSize.Free -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.PowerShell -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id VMware.WorkstationPlayer -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id JAMSoftware.TreeSize.Free -h --accept-package-agreements --accept-source-agreements;
#winget install -e --id Git.Git --accept-package-agreements -h --accept-source-agreements;
winget install JanDeDobbeleer.OhMyPosh

  #Remove apps
winget uninstall  -e --id Microsoft.Teams

  #Remove Search, Task View, Chat and News And Interests from taskbar
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchBoxTaskbarMode -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowTaskViewButton -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarDa -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarMn -Value 0 -Type DWord -Force;

  #Align taskbar to left
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarAl -Value 0 -Type DWord -Force;

# move .\settings.json to:
#%LocalAppData%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

# install .\jjtheme.deskthemepack (timeout /t 3; taskkill /im "systemsettings.exe" /f)

Install-Module PSReadLine -AllowPrerelease -Force
New-Item -Path $PROFILE -Type File -Force
notepad $profle
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
  
  . $PROFILE
