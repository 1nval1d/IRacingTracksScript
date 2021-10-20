$scriptpath = Join-Path $PSScriptRoot "trackscript.ps1"
$action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument $scriptpath
$trigger = New-ScheduledTaskTrigger -AtLogOn
Register-ScheduledTask -TaskName "IRacingTrackFolders" -Action $action -Trigger $trigger
