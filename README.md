Task 1: Deploy Both Flask and Express on a Single EC2 Instance  
  
Terraform init and validate  
<img width="567" alt="image" src="https://github.com/user-attachments/assets/c0df182e-7018-4e81-b032-6d4ffe3e6163" />

S3 backend with tfstate file  
<img width="1498" alt="image" src="https://github.com/user-attachments/assets/7aa894aa-347d-4f10-8511-a57e091919fa" />  
<img width="689" alt="image" src="https://github.com/user-attachments/assets/9d7ed32c-f043-49d2-a8b5-eddbb5d289de" />

DynamoDB state locking  
<img width="1510" alt="image" src="https://github.com/user-attachments/assets/37b32f0f-b79d-4f65-b078-7d9ca88f107b" />  

Terraform plan  
<img width="978" alt="image" src="https://github.com/user-attachments/assets/c4a68dc1-becd-4e5a-bea2-36fa5cecb165" />
<img width="314" alt="image" src="https://github.com/user-attachments/assets/3e9135c1-24a0-4add-ae0d-d7adfaf68057" />

terraform apply -auto-approve  
<img width="550" alt="image" src="https://github.com/user-attachments/assets/50be767f-b617-4682-a337-4347678d20f2" />

EC2 running with defined variables (region, sg, type etc)  
<img width="1497" alt="image" src="https://github.com/user-attachments/assets/6da49871-b832-4bd3-9550-c08868de56a7" />

Verify frontend and backend are running  
<img width="840" alt="image" src="https://github.com/user-attachments/assets/b2cf35aa-c591-40cf-b46f-1c81711cc05b" />

Accessed app via public IP  
<img width="361" alt="image" src="https://github.com/user-attachments/assets/10491635-8ee5-49f6-aa38-3f3898b611d5" />

Data submitted successfully  
<img width="416" alt="image" src="https://github.com/user-attachments/assets/21aa5a66-f69e-466f-945a-28cfabad0c75" />

Verify Data in MongoDB  
<img width="1494" alt="image" src="https://github.com/user-attachments/assets/a1adb9b4-61a6-4d62-8d82-c74e3a827825" />

Terraform destroy  
<img width="588" alt="image" src="https://github.com/user-attachments/assets/d860541b-cf34-4e51-8d3b-f5c9e95fec64" /> 

-----------------------------------------------------------------------------------  
  
TASK 2: Deploy Flask and Express on Separate EC2 Instances  


terraform init and validate  
<img width="600" alt="image" src="https://github.com/user-attachments/assets/e146bdc8-095e-43fa-ae1f-946f2608662f" />  
  
S3 backend with tfstate file  
<img width="1493" alt="image" src="https://github.com/user-attachments/assets/4c00aa69-6e7b-4ea7-a4d5-db25e857eea5" />  
<img width="694" alt="image" src="https://github.com/user-attachments/assets/0d6611e7-7c71-474c-a3f1-56a731de5d31" />  
  
Terraform plan  
<img width="781" alt="image" src="https://github.com/user-attachments/assets/3dd483c0-4221-4c33-a8ab-1e28de278fdd" />  
<img width="541" alt="image" src="https://github.com/user-attachments/assets/a1532551-6ac8-4c19-9e4c-cbc1ae99f9b0" />  

terraform apply -auto-approve  
<img width="559" alt="image" src="https://github.com/user-attachments/assets/93106408-1733-4d18-a332-661683287710" />

EC2 running (frontend and backend)  
<img width="1507" alt="image" src="https://github.com/user-attachments/assets/08333b96-93a5-49fc-ad1b-2ec9b746f2b8" />  

Verify frontend and backend are running  
<img width="1062" alt="image" src="https://github.com/user-attachments/assets/ab908483-220a-43f7-adac-c7bd98fa0079" />  
<img width="830" alt="image" src="https://github.com/user-attachments/assets/88bdec57-1013-498d-9c46-d318eff2d3d5" />  
  
Dynamically updated the Public IP of the backend in the frontend (app.js)  
<img width="580" alt="image" src="https://github.com/user-attachments/assets/f44c7e2a-11e5-4dde-ad2b-378a3db5edea" />  

Accessed app via public IP  
<img width="362" alt="image" src="https://github.com/user-attachments/assets/17c7b09a-0ae3-406d-8492-d91151975bf0" />  
<img width="414" alt="image" src="https://github.com/user-attachments/assets/234557f1-be29-4a3c-b112-67752f5b71f9" />  

Verify Data in MongoDB  
<img width="971" alt="image" src="https://github.com/user-attachments/assets/db4fbf49-3c56-45f1-93c1-66c8935cb7d9" />  

Terraform destroy  
<img width="577" alt="image" src="https://github.com/user-attachments/assets/3148bd3f-0b86-45d1-9b72-00b6cf7b05dd" />  

-----------------------------------------------------------------

TASK 3: Deploy Flask and Express as Docker containers using AWS ECR, ECS, and VPC with Terraform  

Build Docker images(frontend and backend) locally  
<img width="919" alt="image" src="https://github.com/user-attachments/assets/c2427cae-8d92-4b9c-a606-cc75d67fd441" />  

Tagged images for ECR  
<img width="901" alt="image" src="https://github.com/user-attachments/assets/7b5a8699-2c28-45b7-8e2a-7ce92809782f" />  

Pushed to ECR  
<img width="803" alt="image" src="https://github.com/user-attachments/assets/00533c31-e81c-406b-b760-9ef93daf5b83" />  

Terraform init, validate  
<img width="606" alt="image" src="https://github.com/user-attachments/assets/322bafc9-c598-405e-8cba-c2edf830090a" />  

S3 remote backend  
<img width="1497" alt="image" src="https://github.com/user-attachments/assets/7c322cc7-3ce7-4651-b8f5-30c858efa320" /> 
<img width="958" alt="image" src="https://github.com/user-attachments/assets/6218ea67-7a59-4173-988c-e1f7bafdf8ad" />  

Terraform plan  
<img width="914" alt="image" src="https://github.com/user-attachments/assets/18bb5bb8-31a9-47df-bea6-9f291cf2307a" />  
<img width="900" alt="image" src="https://github.com/user-attachments/assets/ad0486a9-f729-411f-9b18-f72c8b1b1adc" />  

Terraform apply -auto-approve  
<img width="919" alt="image" src="https://github.com/user-attachments/assets/1f8e7c35-fea2-45e0-99af-367d78670b0a" />  

ECR  
<img width="1230" alt="image" src="https://github.com/user-attachments/assets/7564a88c-b61a-4273-9ddd-bbb52890c6f8" />  

VPC  
<img width="1268" alt="image" src="https://github.com/user-attachments/assets/bf00f3c7-4c1b-4b0a-a277-e1e7a98f24e4" />  

Subnets  
<img width="1294" alt="image" src="https://github.com/user-attachments/assets/fc51650a-c1aa-491c-acd5-8c747864ed50" />  

Route Table
<img width="1432" alt="image" src="https://github.com/user-attachments/assets/84f2ac5b-af16-4f98-8cda-29a40743a484" />  

IGW  
<img width="1077" alt="image" src="https://github.com/user-attachments/assets/a00d7a13-3b1d-4aee-9698-1f49e59fbe2f" />

Security Groups  
<img width="1368" alt="image" src="https://github.com/user-attachments/assets/3e7f1e97-8050-4750-ba1f-fa4db5251186" />

Application Load Balancers  
<img width="1253" alt="image" src="https://github.com/user-attachments/assets/4dc0d395-eded-4434-b827-42b11d633c3d" />  

Target Groups  
<img width="1260" alt="image" src="https://github.com/user-attachments/assets/25c2f399-2811-44b4-945b-3281002586ee" />  

ECS  
<img width="1224" alt="image" src="https://github.com/user-attachments/assets/39bae5e3-96ea-4046-8758-342f9fb40fec" />  
  
Task definitions  
<img width="963" alt="image" src="https://github.com/user-attachments/assets/1e051af1-a845-4120-95e3-bd585ccd319a" />  

Services (frontend and backend)  
<img width="1210" alt="image" src="https://github.com/user-attachments/assets/bec8b6ce-54d8-4d64-a8c8-c58ca92c442b" />  

Tasks (frontend and backend)  
<img width="1215" alt="image" src="https://github.com/user-attachments/assets/7b1c5234-b6b3-4607-aa3e-98ca74edb022" />  

Cloudwatch logs  
<img width="1234" alt="image" src="https://github.com/user-attachments/assets/2485c640-107f-4942-9fca-fe2dc8d4e73c" />  

Accessing the frontend via ALB DNS  
<img width="624" alt="image" src="https://github.com/user-attachments/assets/53cb10aa-f32f-4281-8dbe-203904c70165" />  

Success Page  
<img width="320" alt="image" src="https://github.com/user-attachments/assets/b6b2ddda-4aee-4363-8fff-cfca9f1b787b" />  

MongoDB data  
<img width="1297" alt="image" src="https://github.com/user-attachments/assets/15e29db5-4dd6-40c2-a6a6-197d2e02dfa3" />






















