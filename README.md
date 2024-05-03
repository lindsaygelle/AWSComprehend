# AWS Comprehend 💻📚
This project provides an event-driven architecture for analyzing user-submitted text using the powerful natural language processing capabilities of AWS Comprehend. It exposes the processed data through a normalized data lake, empowering users to derive valuable insights from their textual data. Users can effortlessly submit blocks of text, and the system will securely store the raw text in Amazon S3, leveraging its scalability and durability. The real magic happens when AWS Comprehend, a sophisticated machine learning service, works its magic on the text, performing a comprehensive suite of natural language processing tasks.

# Pipeline 🚚
This project is a serverless data processing pipeline built on AWS using Terraform. It performs natural language processing and analysis on text files uploaded to an S3 bucket, exposing various insights provided by the AWS Comprehend API.

## Overview
The pipeline consists of the following components:

1. **S3 Bucket**: A designated S3 bucket with a `/text/` partition for storing the input text files, providing a secure and scalable repository for user submissions.
2. **S3 Notification**: When a new file is uploaded to the `/text/` partition, an S3 notification is triggered, initiating the text analysis journey.
3. **SQS Queue**: The S3 notification sends a message to an SQS queue, ensuring efficient and reliable message delivery.
4. **Step Function (Comprehend)**: The SQS queue triggers the first Step Function, orchestrating the initial text processing workflow.
5. **AWS Comprehend**: The Step Function invokes AWS Comprehend, leveraging its advanced natural language processing capabilities to extract valuable insights from the text. This includes language detection, entity recognition, key phrase extraction, personally identifiable information (PII) detection, sentiment analysis, syntax analysis, targeted sentiment analysis, and toxic content detection.
6. **S3 Output**: The analysis results are securely stored in an S3 bucket under the `/comprehend/` partition, ensuring easy access and retrieval.
7. **S3 Notification**: When a new file is written to the `/comprehend/` partition, another S3 notification is triggered, initiating the next phase of the pipeline.
8. **SQS Queue**: The S3 notification sends a message to a second SQS queue, facilitating seamless communication between pipeline stages.
9. **Step Function (Datalake)**: The second SQS queue triggers the second Step Function, responsible for organizing and partitioning the Comprehend analysis results.
10. **S3 Output**: The partitioned data is stored in the S3 bucket under the `/datalake/comprehend` partition, creating a structured and accessible data lake for further analysis and exploration.

# AWS Resources 🏗
The following AWS resources are utilized in this project:

<table>
  <thead>
    <tr>
      <th>AWS Resource</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://docs.aws.amazon.com/s3" target="_blank">S3</a></td>
      <td>Object storage service for storing input text files and processed data.</td>
    </tr>
    <tr>
      <td><a href="https://docs.aws.amazon.com/s3" target="_blank">SQS</a></td>
      <td>Fully managed message queuing service for reliable communication between components.</td>
    </tr>
    <tr>
      <td><a href="https://docs.aws.amazon.com/s3" target="_blank">Step Functions</a></td>
      <td>Serverless orchestration service for coordinating the various steps in the pipeline.</td>
    </tr>
    <tr>
      <td><a href="https://docs.aws.amazon.com/s3" target="_blank">Comprehend</a></td>
      <td>Natural language processing service for analyzing text data and extracting insights.</td>
    </tr>
    <tr>
      <td><a href="https://docs.aws.amazon.com/s3" target="_blank">Glue</a></td>
      <td>Fully managed extract, transform, and load (ETL) service for preparing and loading data.</td>
    </tr>
    <tr>
      <td><a href="https://docs.aws.amazon.com/eventbridge/" target="_blank">EventBridge</a></td>
      <td>Continuous data movement service for efficiently transferring data between AWS services.</td>
    </tr>
  </tbody>
</table>

# Contributing 🤝
Contributions to this [AWS Comprehend](https://www.github.com/lindsaygelle/AWSComprehend) are welcome! We appreciate any contributions,
whether they are bug reports, feature requests, documentation improvements, or code enhancements.

## Reporting Issues
If you encounter any bugs or have feature requests, please open a new issue on the GitHub repository. When reporting an issue, please provide as much detail as possible,
including steps to reproduce the problem, expected behavior, and any relevant logs or error messages.

## Contributing Code
If you would like to contribute code changes, please follow these _basic steps_:

- Fork the repository on GitHub.
- Create a new branch for your changes.
- Make your changes and commit them with descriptive commit messages.
- Push your changes to your forked repository.
- Create a pull request in the main repository, describing your changes in detail.

Please ensure that your code adheres to the project's [coding standards and conventions](./CONTRIBUTING.md). Additionally, make sure to include tests for any new functionality or bug fixes.

## Guidelines 
Before starting any major contribution, please open an issue first to discuss your ideas and ensure they align with the project's goals and direction.
This will help prevent duplicate effort and ensure that your contributions are more likely to be accepted.

Please refer to the [CONTRIBUTING.md](./CONTRIBUTING.md) file for more detailed guidelines on contributing to this project.

We appreciate your contributions and look forward to working together to make this [AWS Comprehend](https://www.github.com/lindsaygelle/AWSComprehend) project even better!

# License 📄
[AWSComprehend](https://www.github.com/lindsaygelle/AWSComprehend) is licensed under the [MIT License](https://en.wikipedia.org/wiki/MIT_License). Feel free to use, modify, and distribute the code within this repository as per the terms of the license.

Please see the [LICENSE](./LICENSE) file for more details.
