Let's enable tracing on the Lambda function and the API Gateway by adding some options to the `provider` section in `serverless.yml`.

```
provider:
  tracing:
    lambda: true
    apiGateway: true
```
