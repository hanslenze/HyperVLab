# Script to check for all the Windows dependencies that we'll need later. If they are not present, install them.
# First some variables

$logfileocation = "$home\Desktop"
$Logfilename = (get-date -Format yyyyMMddTHHmmss)+"_HyperVHomelabPrerequisitescheck.txt"

Workflow prerequisites { 
if ((Get-WindowsOptionalFeature -online -FeatureName Microsoft-Hyper-V-Management-PowerShell).State -eq "Disabled" ) {
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-PowerShell
    Enable-WindowsOptionalFeature -online -FeatureName Microsoft-Hyper-V-Management-clients
} else {
    write-host -BackgroundColor Green "Hyper-V Powershell module already installed" | out-file -Append -filepath $Logfilename
}
Stap 2

Stap 3
}