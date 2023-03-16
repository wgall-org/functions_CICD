project=$1

gcloud storage rm gs://$project/source_code.zip
cp -r ../gcf ../$project
cd ../$project
terraform init
terraform apply --auto-approve  -var project=$project
cd ..
rm -rf $project