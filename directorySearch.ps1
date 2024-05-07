#prompt for user input
$directoryPath = Read-Host "Enter path"

#check if exists
if (-not (Test-Path $directoryPath -PathType Container)) {
	Write-Host "Invalid Path"
	exit
}

#get list of files in directory 
$files = Get-ChildItem -Path $directoryPath
Write-Host "Files found: "
foreach ($file in $files) {
	Write-Host $file.Name
}
