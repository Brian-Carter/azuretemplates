param (
    $certificateADFSsubject,
    $adfsDisplayName,
    $gmsa,
    $domain,
    $adminUser,
    $adminPass
)
 
 
### Preparation

$adminPassword = ConvertTo-SecureString $adminPass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ("${domain}\$($adminUser)", $adminPassword)
 
$CertificateADFS = "$CertificateADFSsubject.pfx"
 

$CertificateThumbprint = (dir Cert:\LocalMachine\My | where {$_.subject -match $CertificateADFSsubject}).thumbprint
 
# ADFS Install
Install-AdfsFarm -credential $credential -CertificateThumbprint $CertificateThumbprint -FederationServiceDisplayName $ADFSdisplayName -FederationServiceName $CertificateADFSsubject -GroupServiceAccountIdentifier $gmsa 
 
 