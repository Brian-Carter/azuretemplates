# Templates #
##Location for Template Testing - non production  ##
POC to install all parts of AD FS including 2 new DC to existing domain
Not using keyvault  
Not secure way to deploy but it works  
## Prerequisites ##
Existing DC for new DCs to use  
Existing Resource Groups  
Existing vNETs  
Existing Storage 
Domain Admin account already created that will be used for all credentials (see not secure)  

### Notes ###
If using a space in AD FS display make sure you use "\"Name of ADFS\"" to get the esacapes and no errors  
Be aware in VS 2015 I ran into issue where my esacpes would disappear with copy/paste anywhere in the template
