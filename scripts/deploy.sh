project=$1


cp -r ../gcf ../$project
cd ../$project
sed -i "s/bct/$project/" main.tf
terraform init
terraform apply --auto-approve  -var project=$project
cd ..
rm -rf $project