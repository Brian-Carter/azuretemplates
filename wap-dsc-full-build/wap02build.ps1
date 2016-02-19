param (
    $CertificateADFSsubject,
    $admincred,
    $adminpass,
    $domain
)


$adminPassword = ConvertTo-SecureString $adminpass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ("${Domain}\$($Admincred)", $adminPassword)
 
$CertificateThumbprint = (dir Cert:\LocalMachine\My | where {$_.subject -match $CertificateADFSsubject}).thumbprint

#open Firwall ports
New-NetFirewallRule -DisplayName "Loadbalancer Probe Port 80" -Direction Inbound -LocalPort 80 -Protocol TCP -Action Allow


# Web Application Proxy Configuration Wizard
Install-WebApplicationProxy -CertificateThumbprint $CertificateThumbprint -FederationServiceName $CertificateADFSsubject -FederationServiceTrustCredential $credential
