# S3

```JSON
{
    "messageId": "96885c09-e5c1-4b94-9412-00f0db5a7b08",
    "receiptHandle": "AQEBGO4VtU16rUjuM9+fImUBYUXmgUtu1XUCMDlbVKUC4tKgCfJyUNnufC0cscJ8cjQ6EPRWMyt3GguHSLEPHN0YTZ+9vBqnRSLh5C1xwvh+4b6y64LbKBUU2BRN9SsRluEUyhOekUbNG5YwFB0XzZJUcFX6hWizOYC2kooX5BjmKSLII7LRad/JIz7ZOoUr4Tt95ZzTTxK8d2yZlS1Qf8FpkSvP6W5lTowNdQg3eyIqq7dqDMgXKanDw5Vgzv7nb2zYq4JKx6vUZyQgeOoIWeJX7L3SXbb+QgxhTHgzac3OxunxGOwZuw/kdVsCGcFC48RwCF/9/4biVsPKBviyd8Bc/JBjaVz0xxsUYZsAqCcfouy127wwnHV1L6NajAITUEDwp90D8mF7BnSBxZIGZbrFsJMXTwJRIIotCFxKVHcgF3c=",
    "body": {
        "Records": [
            {
                "eventVersion": "2.1",
                "eventSource": "aws:s3",
                "awsRegion": "us-east-1",
                "eventTime": "2024-04-18T13:47:13.995Z",
                "eventName": "ObjectCreated:Put",
                "userIdentity": {
                    "principalId": "XXXXXXXXXXXXXX"
                },
                "requestParameters": {
                    "sourceIPAddress": "0.0.0.0"
                },
                "responseElements": {
                    "x-amz-request-id": "NAJ9XXW4ACRVZRWK",
                    "x-amz-id-2": "I6SrAkxceWCyEw9eQ+hufXcrzxkhVhTQiEDlXklo3i20Za910zaxjP2bbPrhEoxDQwdcLoWqDLAOEYlHkA72ZwYx3eVk2bii"
                },
                "s3": {
                    "s3SchemaVersion": "1.0",
                    "configurationId": "https://sqs.us-east-1.amazonaws.com/123456789012/example-s3-object-created-text",
                    "bucket": {
                        "name": "123456789012-example",
                        "ownerIdentity": {
                            "principalId": "XXXXXXXXXXXXXX"
                        },
                        "arn": "arn:aws:s3:::123456789012-example"
                    },
                    "object": {
                        "key": "text/example.txt",
                        "size": 1909,
                        "eTag": "bca938fcdf27c8b16144f605c87d7f82",
                        "sequencer": "0066212461F1A797DD"
                    }
                }
            }
        ]
    },
    "attributes": {
        "ApproximateReceiveCount": "1",
        "SentTimestamp": "1713448034930",
        "SenderId": "AROA4R74ZO52XAB5OD7T4:S3-PROD-END",
        "ApproximateFirstReceiveTimestamp": "1713448034947"
    },
    "messageAttributes": {},
    "md5OfBody": "65471033ca4ebe2b13baadf2a6c39c54",
    "eventSource": "aws:sqs",
    "eventSourceARN": "arn:aws:sqs:us-east-1:123456789012:example-s3-object-created-text",
    "awsRegion": "us-east-1"
}
```
