param (
    $certificateADFSsubject,
    $adfsPrimaryServer,
    $gmsa,
    $domain,
    $adminUser,
    $adminPass,
    $adfsSAUser,
    $adfsSAPass
)
 
### Preparation

$adminPassword = ConvertTo-SecureString $adminPass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ("${domain}\$($adminUser)", $adminPassword)

$adfsAdminSAPassword = ConvertTo-SecureString $adfsSAPass -AsPlainText -Force
$adfsSACredential = New-Object System.Management.Automation.PSCredential ("${domain}\$($adfsSAUser)", $adfsAdminSAPassword)
 
$CertificateADFS = "$certificateADFSsubject.pfx"
 

$CertificateThumbprint = (dir Cert:\LocalMachine\My | where {$_.subject -match $certificateADFSsubject}).thumbprint
# ADFS Install
Add-AdfsFarmNode -credential $credential -CertificateThumbprint $CertificateThumbprint -ServiceAccountCredential $ADFSSACredential -PrimaryComputerName $adfsPrimaryServer -PrimaryComputerPort 80