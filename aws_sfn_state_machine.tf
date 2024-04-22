resource "aws_sfn_state_machine" "comprehend_detect_dominant_language" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-dominant-language"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_dominant_language.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_entities" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-entities"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_entities.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_key_phrases" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-key-phrases"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_key_phrases.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_pii_entities" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-pii-entities"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_pii_entities.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_sentiment" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-sentiment"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_sentiment.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_syntax" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-syntax"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_syntax.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_targeted_sentiment" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-targeted_sentiment"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_targeted_sentiment.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_toxic_content" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-toxic-content"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_toxic_content.arn
}

resource "aws_sfn_state_machine" "s3_object_created_text" {
  definition = <<EOF
{
  "StartAt": "Map",
  "States": {
    "Map": {
      "Type": "Map",
      "ItemProcessor": {
        "ProcessorConfig": {
          "Mode": "INLINE"
        },
        "StartAt": "Pass",
        "States": {
          "Pass": {
            "Type": "Pass",
            "Parameters": {
              "body.$": "States.StringToJson($.body)"
            },
            "Next": "Parallel"
          },
          "Parallel": {
            "Type": "Parallel",
            "End": true,
            "Branches": [
              {
                "StartAt": "Map (1)",
                "States": {
                  "Map (1)": {
                    "Type": "Map",
                    "ItemProcessor": {
                      "ProcessorConfig": {
                        "Mode": "INLINE"
                      },
                      "StartAt": "Parallel (1)",
                      "States": {
                        "Parallel (1)": {
                          "Type": "Parallel",
                          "Branches": [
                            {
                              "StartAt": "Pass (1)",
                              "States": {
                                "Pass (1)": {
                                  "Type": "Pass",
                                  "End": true
                                }
                              }
                            },
                            {
                              "StartAt": "GetObject",
                              "States": {
                                "GetObject": {
                                  "Type": "Task",
                                  "End": true,
                                  "Parameters": {
                                    "Bucket.$": "$.s3.bucket.name",
                                    "Key.$": "$.s3.object.key"
                                  },
                                  "Resource": "arn:aws:states:::aws-sdk:s3:getObject"
                                }
                              }
                            }
                          ],
                          "ResultSelector": {
                            "awsRegion.$": "$[0].awsRegion",
                            "eventName.$": "$[0].eventName",
                            "eventSource.$": "$[0].eventSource",
                            "eventTime.$": "$[0].eventTime",
                            "eventVersion.$": "$[0].eventVersion",
                            "requestParameters": {
                              "sourceIPAddress.$": "$[0].requestParameters.sourceIPAddress"
                            },
                            "s3": {
                              "bucket": {
                                "arn.$": "$[0].s3.bucket.arn",
                                "name.$": "$[0].s3.bucket.name"
                              },
                              "configurationId.$": "$[0].s3.configurationId",
                              "object": {
                                "body.$": "$[1].Body",
                                "acceptRanges.$": "$[1].AcceptRanges",
                                "contentLength.$": "$[1].ContentLength",
                                "contentType.$": "$[1].ContentType",
                                "eTag.$": "$[0].s3.object.eTag",
                                "lastModified.$": "$[1].LastModified",
                                "metadata.$": "$[1].Metadata",
                                "serverSideEncryption.$": "$[1].ServerSideEncryption"
                              },
                              "s3SchemaVersion.$": "$[0].s3.s3SchemaVersion"
                            },
                            "userIdentity": {
                              "principalId.$": "$[0].userIdentity.principalId"
                            }
                          },
                          "Next": "PutObject"
                        },
                        "PutObject": {
                          "Type": "Task",
                          "End": true,
                          "Parameters": {
                            "Body": {
                              "aws_region.$": "$.awsRegion",
                              "event_name.$": "$.eventName",
                              "event_source.$": "$.eventSource",
                              "event_time.$": "$.eventTime",
                              "event_version.$": "$.eventVersion",
                              "request_parameters": {
                                "source_ip_address.$": "$.requestParameters.sourceIPAddress"
                              },
                              "s3": {
                                "bucket": {
                                  "arn.$": "$.s3.bucket.arn",
                                  "name.$": "$.s3.bucket.name"
                                },
                                "configuration_id.$": "$.s3.configurationId",
                                "object": {
                                  "accept_ranges.$": "$.s3.object.acceptRanges",
                                  "content_length.$": "$.s3.object.contentLength",
                                  "content_type.$": "$.s3.object.contentType",
                                  "e_tag.$": "$.s3.object.eTag",
                                  "last_modified.$": "$.s3.object.lastModified",
                                  "metadata.$": "$.s3.object.metadata",
                                  "server_side_encryption.$": "$.s3.object.serverSideEncryption"
                                },
                                "s3_schema_version.$": "$.s3.s3SchemaVersion"
                              },
                              "user_identity": {
                                "principal_id.$": "$.userIdentity.principalId"
                              }
                            },
                            "Bucket.$": "$.s3.bucket.name",
                            "Key.$": "States.Format('${aws_s3_object.document.key}{}/metadata.json', $.s3.object.eTag)"
                          },
                          "Resource": "arn:aws:states:::aws-sdk:s3:putObject"
                        }
                      }
                    },
                    "End": true,
                    "ItemsPath": "$.body.Records"
                  }
                }
              }
            ]
          }
        }
      },
      "End": true
    }
  }
}
  EOF
  name       = "${local.organization}-s3-object-created-text"
  role_arn   = aws_iam_role.sfn_state_machine_s3_object_created_text.arn
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}
