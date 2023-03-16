import sys 
import os  


project = sys.argv[1]
from google.cloud import storage
from functions import is_bucket_present

is_present = is_bucket_present(project)

if is_present == False: 
    os.system("./bucket.sh {}".format(project))

os.system("./deploy.sh {}".format(project))
    
