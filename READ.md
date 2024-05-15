**---->WebAppCreation:-**

To Create App service we need resources such as ARG, VNET, SUBNET and NETWORK INTERFACE . 
So we are using modules to create new resources 
 
![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/09b15348-e064-4979-b8d5-3860fa0abe71)

**---->RootFolder:-**

**---->Modules**
Modules folder will help to create below resources 
![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/2bfe7385-2668-4406-b6aa-6a66b83714af)

       
**Usecases and Samples Terraform information :-**
![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/31694e4e-e6bf-4a04-8912-6422beb225cf)

**---->Samples**

Under Samples folders ,  below folder are usecases to provision the WebApp resources. 

![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/a807a354-1e23-4351-a8ab-bbf40dfe2b09)

![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/933bb46d-3650-4f7a-a5c6-da4e780749ef)

![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/6c5c5f55-613c-4500-a420-99b6468eeeeb)


**To reuse of code from Environment / Project level  using terraform.tfvars**

Created environment under samples
  
  **---->SubfolderOfEnvironment**
  
 ![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/12c001e2-db3a-4ca6-a91e-34a4fd743021)


**In dev’sSlot folder , Create N number of dev slot App resources with prod
tf**

 ![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/c74919c8-b7a7-422a-a5f7-dc997bc3eb02)

**In uat’sSlot folder , Create N number of uat slot App resources with prod tf**

![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/882efe61-2d30-4d49-a1cc-f4e5a9339598)


**In NoSlot’s folder , No slot only prod env creation**

![image](https://github.com/leebalu/Terraform_Web_App/assets/137815649/4b17d855-13cc-4bd8-976b-92680cd98269)


**Modify the variables values in the terraform.tfvars and use modules as needed**

**Then run terraform action with path of the tfvars**
