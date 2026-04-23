# lab01-iac-jueves-am

´´´cd src/web01
docker build -t lab/web .´´´

´´´cd ../api
docker build -t lab/api .´´´

´´´cd ../bd
docker build -t lab/db .´´´

´´´cd iac´´´

´´´terraform init´´´

´´´terraform workspace new dev
terraform workspace select dev´´´

´´´terraform plan
terraform apply -auto-approve´´´

´´´terraform workspace new qa
terraform workspace select qa´´´


