import boto3

from ._version import __version__

def main():
    s3 = boto3.resource('s3')

    for bucket in s3.buckets.all():
        print(bucket.name)
