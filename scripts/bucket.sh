project=$1

cp -r ../gcs ../$project
cd ../$project 
terraform init
terraform apply --auto-approve  -var project=$project
cd ..
rm -rf $project