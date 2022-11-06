$ScriptFromGitHub = Invoke-WebRequest https://raw.githubusercontent.com/gore-storm/win11setup/main/setup.ps1;
Invoke-Expression $($ScriptFromGitHub.Content)
