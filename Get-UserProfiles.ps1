Function Get-UserProfile {
    # Param (
    #     [String]$Username
    # )
    $report = "" | Select Username,SID,ProfilePath,LastLogonTime
    Get-CimInstance Win32_UserProfile | ForEach-Object {
        $report.Username = (Get-WmiObject Win32_UserAccount -Filter "SID='$($_.SID)'").Caption
        $report.SID = $_.SID
        $report.ProfilePath = $_.LocalPath
        $report.LastLogonTime = $_.LastUseTime
        $report
    }
}