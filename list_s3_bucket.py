import boto3

def check_public_access(bucket_name):
    s3_client = boto3.client('s3')
    response = s3_client.get_bucket_acl(Bucket=bucket_name)

    for grant in response['Grants']:
        grantee = grant.get('Grantee', {})
        uri = grantee.get('URI', '')

        if uri == 'http://acs.amazonaws.com/groups/global/AllUsers' or uri == 'http://acs.amazonaws.com/groups/global/AuthenticatedUsers':
            return True

    return False

def list_buckets_with_public_access():
    s3_client = boto3.client('s3')
    response = s3_client.list_buckets()

    for bucket in response['Buckets']:
        bucket_name = bucket['Name']
        public_access = check_public_access(bucket_name)

        if public_access:
            print(f"Bucket '{bucket_name}' has public access.")
        else:
            print(f"Bucket '{bucket_name}' does not have public access.")

if __name__ == "__main__":
    list_buckets_with_public_access()
