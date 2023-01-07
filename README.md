# TerraformforEKS
TerraformforEKS
Sử dụng Terraform để provision EKS có thể sử dụng các dịch vụ của AWS bằng cách cài các CSI-driver (EBS,EFS) hoặc các vài thứ khác tương tự của service bằng helm. Bản chất là Service-account trong EKS sẽ có 1 role (web-identify). SA sẽ gọi -> oidc bằng certification -> STS role trên:
![image](https://user-images.githubusercontent.com/36032208/211161371-9db832ef-b732-4bef-b0ca-b0584faea4f4.png)
Các Service sẽ được EKS sử dụng:
![image](https://user-images.githubusercontent.com/36032208/211161478-89a489d6-5f2b-4d1a-8563-69ff1fc292ec.png)
