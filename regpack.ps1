$r="regpack"
$v=ConvertFrom-Json (Invoke-WebRequest -Uri api.github.com/repos/donkrage/$r/releases/latest).tag_name
cd C:\
Invoke-WebRequest -Uri github.com/donkrage/$r/releases/download/$v/$r-$v-win10-win11.zip -OutFile .\$r.zip
Expand-Archive -Force .\$r.zip .\
II .\$r-$v-win10-win11
Remove-Item .\$r.zip -Force
Remove-Item .\$r.ps1 -Force