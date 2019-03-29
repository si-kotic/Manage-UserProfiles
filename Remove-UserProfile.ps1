Function Remove-UserProfile {
    Param (
        [Parameter(Mandatory=$true)][String]$SID
    )
    Remove-WmiObject -InputObject (Get-WmiObject Win32_UserProfile -Filter "sid='$SID'")
}