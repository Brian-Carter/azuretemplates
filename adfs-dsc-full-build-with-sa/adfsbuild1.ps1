param (
    $certificateADFSsubject,
    $adfsDisplayName,
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
 
$CertificateADFS = "$CertificateADFSsubject.pfx"
 

$CertificateThumbprint = (dir Cert:\LocalMachine\My | where {$_.subject -match $CertificateADFSsubject}).thumbprint
 
# ADFS Install
Install-AdfsFarm -credential $credential -CertificateThumbprint $CertificateThumbprint -FederationServiceDisplayName $ADFSdisplayName -FederationServiceName $CertificateADFSsubject -ServiceAccountCredential $adfsSACredential
 
 