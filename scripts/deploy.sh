project=$1


cp -r ../gcf ../$project
cd ../$project
terraform init
terraform apply --auto-approve  -var project=$project
cd ..
rm -rf $project