# Docker image for AWS CLI tool

## Build the docker image

```
docker build -t aws .
```

## set an alias to run the AWS CLI
To run non-interactively in a script you may need to remove the `-it` from the `docker run` command.

```
alias aws='docker run -it --rm -v $HOME/.aws:/root/.aws -v $PWD:/app aws'
```

## Sample commands

```
aws s3 mb s3://mmurphy --region eu-west-1     # Make a bucket in a region
aws s3 cp ./test.bin s3://mmurphy/test.bin    # Copy a local file to the S3 bucket
aws s3 cp s3://mmurphy/test.txt .             # Copy a file from the bucket to local directory
```
