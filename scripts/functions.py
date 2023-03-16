import os 

def is_bucket_present(bname):
    is_present = os.popen("gcloud storage buckets list | grep name | grep {} | cut -d : -f 2 | tr -d " " | wc -l".format(bname)).read()
    if is_present.strip() == "0":
        return False 
    else:
        return True