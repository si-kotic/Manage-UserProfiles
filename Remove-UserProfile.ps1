Function Remove-UserProfile {
    <#
    .LINK
    https://github.com/si-kotic/Manage-UserProfiles
    #>
    Param (
        [Parameter(ValueFromPipeline=$true,Mandatory=$true)][String]$SID
    )
    Remove-WmiObject -InputObject (Get-WmiObject Win32_UserProfile -Filter "sid='$SID'")
}