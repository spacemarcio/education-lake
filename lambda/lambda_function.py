import boto3
import requests
import csv

url = 's3://inep-censo-files/escolas.csv'

def handler(event, context):
    
    response = requests.get(url)        

    with open('/tmp/data.csv', 'w') as f:
        writer = csv.writer(f)
        for line in response.iter_lines():
            writer.writerow(line.decode('utf-8').split(','))
    
    s3_client = boto3.client('s3')
    s3_client.upload_file('/tmp/data.csv', 'educalake-raw', 'DATA.csv')

    return {
        'statusCode': 200,
        'body': "Crawler started!"
    }