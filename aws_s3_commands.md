# Downloading from AWS

Neuroimaging data is often stored on AWS S3. For example, ABIDE I, ABIDE II and ADHD500 which can be found at [F1000](http://fcon_1000.projects.nitrc.org/indi/s3/index.html)

First install the cli
```bash
pip install awscli
```

list bucket contents
```
aws s3 ls s3://fcp-indi/data/Projects/ --no-sign-request
```

 - copy over bucket
```
bucket_link='s3://fcp-indi/data/Projects/ABIDE'
destination='abide' 

aws s3 cp $bucket_link $destination --recursive --no-sign-request
```

sync bucket (copy over differences)
```
aws s3 sync s3://fcp-indi/data/Projects/ADHD200 ./data/ADHD200 --recursive --no-sign-request
```

