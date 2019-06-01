# Manage User Profiles
This is a collection of cmdlets which can be used to manage the User Profiles on a computer.
## Cmdlets
* Get-UserProfile
* Remove-UserProfile
## Usage
### Get-UserProfile
This cmdlet returns a list of the User Profiles which exist on the local computer.
#### Syntax
```powershell
Get-UserProfile
```
#### Example
```
C:\>Get-UserProfile

Username                   SID                                             ProfilePath          LastLogonTime
--------                   ---                                             -----------          -------------
DOMAIN\username            S-1-5-21-4007898870-4224743618-3187359043-10639 C:\Users\username    01/06/2019 21:48:31
LOCALMACHINE\admin         S-1-5-21-1465283143-2216492131-1270546254-1001  C:\Users\admin       01/06/2019 20:30:32
```
### Remove-UserProfile
This cmdlet removes the specified user profile from the local machine.
#### Parameters
##### SID
The SID of a user profile which exists on the local machine.  This value can be retrieved using Get-UserProfile and can be supplied in the pipeline.

Argument | Value
--- | ---
Type | String
Position | Named
Default value | None
Accept pipeline input | True
Accept wildcard characters | False
Mandatory | True
#### Syntax
```powershell
Remove-UserProfile -SID "S-1-5-21-4007898870-4224743618-3187359043-10639"
```
```powershell
(Get-UserProfile | Where-Object {$_.Name -eq "DOMAINNAME\username"}).SID | Remove-UserProfile
```