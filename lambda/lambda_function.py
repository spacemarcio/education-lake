import boto3
import requests
import pandas as pd 

s3 = boto3.resource('s3')
bucket = s3.Bucket('educalake-raw')

url = 's3://inep-censo-files/escolas.csv'

def handler(event, context):
    
    data = pd.read_csv(url,delimiter='|')
    data.to_csv('/tmp/data.csv',sep = '\t', index = False)
    
    s3_client = boto3.client('s3')
    s3_client.upload_file('/tmp/data.csv', 'educalake-raw', 'DATA.csv')

    return {
        'statusCode': 200,
        'body': "Crawler started!"
    }