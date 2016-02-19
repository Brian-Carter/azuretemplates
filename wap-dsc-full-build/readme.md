#2 server WAP install  

Install 2 WAP servers into existing ADFS  
  
 ```
New-AzureRmResourceGroupDeployment -ResourceGroupName "RGNAME" -Name "DeploymentName" -TemplateUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/wap-dsc-full-build/azuredeploy.json" -TemplateParameterUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/wap-dsc-full-build/azuredeploy.parameters.json"
```

<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/wap-dsc-full-build/azuredeploy.json" target="_blank">
  <img src="http://armviz.io/visualizebutton.png"/>
</a>
