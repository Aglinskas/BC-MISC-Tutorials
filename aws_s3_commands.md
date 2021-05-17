# Downloading stuff from AWS

Neuroimaging data is often stored on AWS S3. For example, ABIDE I, ABIDE II and ADHD500 which can be found at [F1000](http://fcon_1000.projects.nitrc.org/indi/s3/index.html)

Buckets folders on the web, however they can't be navigated like a webpage (the reason **why** that is the case is beyong me). 
for example, here's a link to publiclly accessible ABIDE data, stored on AWS S3: [s3://fcp-indi/data/Projects/](s3://fcp-indi/data/Projects/). Did you click on it? Yeah nothing happened, did it?

There's different ways to acess data stored in S3 buckets, there's apps like [Cyberduck](http://fcon_1000.projects.nitrc.org/indi/s3/index.html), and there's command line interfaces, like [AWS CLI](https://aws.amazon.com/cli/)

## Using AWS command line interface

First install the cli tools
```bash
pip install awscli
```

to list bucket contents

```
aws s3 ls s3://fcp-indi/data/Projects/ --no-sign-request
```

to copy bucket contents 

```
bucket_link='s3://fcp-indi/data/Projects/ABIDE'
destination='abide' 

aws s3 cp $bucket_link $destination --recursive --no-sign-request
```

to sync bucket (copy over differences)

```
aws s3 sync s3://fcp-indi/data/Projects/ADHD200 ./data/ADHD200 --recursive --no-sign-request
```

