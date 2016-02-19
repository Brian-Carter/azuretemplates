param (
    $certificateADFSsubject,
    $adfsPrimaryServer,
    $gmsa,
    $domain,
    $adminUser,
    $adminPass
)
 
### Preparation

$adminPassword = ConvertTo-SecureString $adminPass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ("${domain}\$($adminUser)", $adminPassword)
 
$CertificateADFS = "$certificateADFSsubject.pfx"
 

$CertificateThumbprint = (dir Cert:\LocalMachine\My | where {$_.subject -match $certificateADFSsubject}).thumbprint
# ADFS Install
Add-AdfsFarmNode -credential $credential -CertificateThumbprint $CertificateThumbprint -GroupServiceAccountIdentifier $gmsa -PrimaryComputerName $adfsPrimaryServer -PrimaryComputerPort 80