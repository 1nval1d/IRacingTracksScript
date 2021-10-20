# IRacingTracksScript
trackscript creates folders for each track in Iracing within each car folder in the IRacing setup folder.

autorun adds a scheduled task to run taskscript every  time you log in.

## Execution Policy
Windows disables the execution of unsigned Powershell scripts by default for security.
While thats a good thing, I cant afford to sign the script.
To use this, you have to run this command in admin powershell first: "Set-ExecutionPolicy Unrestricted"

### Future
I'll maybe reprogramm this to deliver an executable, that doesnt require the policy change.
