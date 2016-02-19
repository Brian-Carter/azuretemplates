#Installs DCs
Assumes networking is in place - with DNS  
Assumes RG in place  
Assumes strorage is in place  
Assumes username/password is domain admin  

```
New-AzureRmResourceGroupDeployment -ResourceGroupName "RGNAME" -Name "DeploymentName" -TemplateUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/dc-dsc-full-build/azuredeploy.json" -TemplateParameterUri "https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/dc-dsc-full-build/azuredeploy.parameters.json"
```
<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/Brian-Carter/azuretemplates/master/dc-dsc-full-build/azuredeploy.json" target="_blank">
  <img src="http://armviz.io/visualizebutton.png"/>
</a>
