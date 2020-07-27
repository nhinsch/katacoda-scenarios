We can add a custom metric to our Lambda function.

Import `sendDistributionMetric` from `datadog-lambda-js`. This library is provided by the Serverless Framework plugin, so we don't have to install it.

```js
const sendDistributionMetric = require("datadog-lambda-js").sendDistributionMetric;
```

Update the handler to send custom metric.

```js
module.exports.handler = async (event, context, callback) => {

    // ...

    // ADD METRIC HERE
    sendDistributionMetric(
        "create_image_upload_url.request", // Metric name
        1,                                 // Metric value
        `bucket:${bucket}`,                // Metric tag
    );

    return {
        statusCode: 202,
        body: JSON.stringify({
            uploadUrl: url,
            publicUrl: response.data
        })
    };
};
```
