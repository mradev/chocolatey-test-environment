cinst au
cinst conemu
cinst notepadplusplus
cinst everything
cinst myuninst
cinst copyq

mkdir (Split-Path $Profile) -ea 0

@"
import-module `$Env:ChocolateyInstall\helpers\chocolateyInstaller.psm1 -ea ignore
cd c:\packages -ea ignore
"@ -replace "`n", "`r`n" | Out-File -Append $Profile
