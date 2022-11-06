#update windows
#update store apps


#winget
#Add msstore as trusted resource

#Install apps
winget install -e --id Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements;
#winget install -e --id qBittorrent.qBittorrent --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.PowerToys --accept-package-agreements --accept-source-agreements;
#winget install -e --id Logitech.GHUB --accept-package-agreements --accept-source-agreements;
#winget install -e --id Google.Drive --accept-package-agreements --accept-source-agreements;
#winget install -e --id Nvidia.GeForceExperience --accept-package-agreements --accept-source-agreements;
#winget install -e --id EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements;
#winget install -e --id Samsung.DeX --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.DotNet.DesktopRuntime.6 --accept-package-agreements --accept-source-agreements;
#winget install -e --id ShareX.ShareX --accept-package-agreements --accept-source-agreements;
#winget install -e --id 7zip.7zip --accept-package-agreements --accept-source-agreements;
#winget install -e --id CodecGuide.K-LiteCodecPack.Basic --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.VC++2013Redist-x64 --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.VC++2010Redist-x64 --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.VC++2015-2022Redist-x64 --accept-package-agreements --accept-source-agreements;
#winget install -e --id Valve.Steam --accept-package-agreements --accept-source-agreements;
#winget install -e --id TeamViewer.TeamViewer --accept-package-agreements --accept-source-agreements;
#winget install -e --id Corsair.iCUE.4 --accept-package-agreements --accept-source-agreements;
#winget install -e --id JAMSoftware.TreeSize.Free --accept-package-agreements --accept-source-agreements;
#winget install -e --id Microsoft.PowerShell --accept-package-agreements --accept-source-agreements;
#winget install -e --id VMware.WorkstationPlayer --accept-package-agreements --accept-source-agreements;
#winget install -e --id JAMSoftware.TreeSize.Free --accept-package-agreements --accept-source-agreements;
#winget install -e --id Git.Git --accept-package-agreements --accept-source-agreements;

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
