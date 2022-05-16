$FileToRun = "key-create.ps1"
$KeyCreate = $PSScriptRoot
$KeyCreate = $KeyCreate + "\" + $FileToRun

Function DeleteDownloadedContent(){
    If (Test-Path -Path $KeyCreate -PathType Leaf){
        Write-Host "002: file exists."
        Remove-Item -Path $KeyCreate -Force
    }
}

DeleteDownloadedContent

Invoke-WebRequest -Uri https://raw.githubusercontent.com/gabe31415/Windows/master/Registry/key-create.ps1 -OutFile $KeyCreate

."$KeyCreate"

Start-Sleep -Seconds 30

DeleteDownloadedContent
