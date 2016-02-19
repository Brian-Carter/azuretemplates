#Deploy ADFS 2 server with ILB  
This users GMSA instead of Service Account

to create a GMSA - New-ADServiceAccount -Name gmsaname -DNSHostName gmsaname.domain.com  

```
New-AzureRmResourceGroupDeployment -ResourceGroupName "RGNAME" -Name "DeploymentName" -TemplateUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/adfs-dsc-full-build/azuredeploy.json" -TemplateParameterUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/adfs-dsc-full-build/azuredeploy.parameters.json"
```

<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/adfs-dsc-full-build/azuredeploy.json" target="_blank">
  <img src="http://armviz.io/visualizebutton.png"/>
</a>
