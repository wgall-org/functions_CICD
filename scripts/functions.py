from google.cloud import storage

def is_bucket_present(bname):
    path_to_private_key = './sa_key.json'
    try: 
        client = storage.Client.from_service_account_json(json_credentials_path=path_to_private_key)
        bucket = storage.Bucket(client, bname)
        bucket.exists()
        return True
    except: 
        return False