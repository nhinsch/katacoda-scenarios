We can add a Lambda Layer to our Lambda function to collect additional metrics. The easiest way to do this is with Datadog's plugin for the Serverless Framework.

Install the plugin with `npm install --save-dev serverless-plugin-datadog`.

Then add the following to your `serverless.yml` file:

```yaml
plugins:
  - serverless-plugin-datadog

custom:
	datadog:
		flushMetricsToLogs: true
```

[Learn more about Datadog Lambda Layers](https://docs.datadoghq.com/integrations/amazon_lambda/?tab=node#installing-and-using-the-datadog-layer)