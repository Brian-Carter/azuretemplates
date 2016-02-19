#Deploy ADFS 2 server with ILB  
must have certificate already on a drive  
This uses a Service Account instead of GMSA  
  
 ```
New-AzureRmResourceGroupDeployment -ResourceGroupName "RGNAME" -Name "DeploymentName" -TemplateUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/adfs-dsc-full-build-with-sa/azuredeploy.json" -TemplateParameterUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/adfs-dsc-full-build-with-sa/azuredeploy.parameters.json"
```

<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/adfs-dsc-full-build-with-sa/azuredeploy.json" target="_blank">
  <img src="http://armviz.io/visualizebutton.png"/>
</a>
