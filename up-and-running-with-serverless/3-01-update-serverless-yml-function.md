Now we are going to add a second function. Copy the following to your `serverless.yml`:

```yml
functions:
  # ...
  # COPY BELOW HERE
  process-image:
    runtime: nodejs10.x
    name: process-image-${self:provider.stage}
    handler: process-image.handler
    events: # Emits event when a jpg file is uploaded to the directory
      - s3:
          bucket: ${self:provider.imageBucketName}
          event: s3:ObjectCreated:*
          rules:
            - prefix: unprocessed/
            - suffix: .jpg
```

`process-image` will be invoked when a new file is uploaded to our S3 bucket.
