AWS Exam primer:
http://d0.awsstatic.com/training-and-certification/docs-bigdata-spec/AWS_Certified_Big_Data_Specialty_Blueprint.pdf

Useful link
https://www.linkedin.com/pulse/my-experience-aws-certified-big-data-specialty-exam-beta-khor-%E8%AE%B8%E6%80%80%E7%A5%A5/

Tutorials:
https://aws.amazon.com/big-data/getting-started/tutorials/

## Getting started:
http://awsdocs.s3.amazonaws.com/gettingstarted/latest/awsgsg-emr.pdf


## Whitepapers
Big data Analytics Option on AWS https://d1.awsstatic.com/whitepapers/Big_Data_Analytics_Options_on_AWS.pdf
Data Warehousing on AWS: https://d1.awsstatic.com/whitepapers/enterprise-data-warehousing-on-aws.pdf
Best Practices for Amazon EMR https://d0.awsstatic.com/whitepapers/aws-amazon-emr-best-practices.pdf
Lambda Architecture for Batch and Real- Time Processing on AWS with Spark Streaming and Spark SQL https://d1.awsstatic.com/whitepapers/lambda-architecure-on-for-batch-aws.pdf
Core Tenets of IoT https://d1.awsstatic.com/whitepapers/core-tenets-of-iot1.pdf
Kinesis: https://d1.awsstatic.com/whitepapers/whitepaper-streaming-data-solutions-on-aws-with-amazon-kinesis.pdf


## developer guides

AWS Redshift
DynamoDB
IoT
Kinesis Stream
Kinesis Firehose
Machine Learning
IoT


## Topics 

General big data technology - understand concepts of map reduce, data shuffling, performance tuning and security. Understand HDFS vs EMRFS and when to use each of them. Have a high level understanding of Spark and Spark Streaming. Know Hbase use cases and Hive usages. High level understanding of Apache Zeppelin, Project Jupyter and Tableau and when to use them for visualisation. Know when to leverage Apache Presto to query different data sources together. Generally, you can run all these stacks on EMR. So, know the advantages of running it on EMR vs own EC2 instances.
Kinesis Stream and Firehose- this is a big topic as it was related to big data ingestion and streaming. Know how to tune the throughput and troubleshoot producer and consumer throughput issues. Know features offered by KPL and KCL and when to use them for sending/receiving data (e.g. payload data aggregation and collection, auto retry, shard discovery and load balancing). Know why ingestion using Kinesis is better (or worse) than say Apache Kafka. Know how DynamoDB is used in checkpointing and why it might cause throughput issue. Understand the limitation of Kinesis stream on storage duration and how sharding affects throughput. I did not encounter questions on Kinesis Analytics.
Redshift - another big topic. Understand the overall architecture including leader, compute node and node slices. Know how to import data into Redshift using COPY command and move/migrate data using UNLOAD command to S3. Know how to tune performance by selecting the right sort key and distribution style for dimension and fact tables. Understand workload management and when to use it to cater to various types of queries. Understand how encryption can be applied to Redshift data using KMS and CloudHSM. Know how to secure data in transit using SSL. Know when to use large node cluster vs small node cluster. I did not encountered questions related to Redshift SQL query tuning.
DynamoDB - a very big topic. Understand what is the right use case for DynamoDB (e.g. key-value fast lookup without complex join). Understand how partition affects query performance and how to select the right hash and sort key for given situation. Know how to design the right LSI and GSI for optimal throughput. Understand how to troubleshoot data throttling issues due to GSI and LSI design. Understand the impact of partitioning on WCU and RCU, especially issues of hot partitions. Understand limitation of DynamoDB with regards to item size and how to overcome it. I did not get any questions on DynamoDB stream.
AWS IoT - I had a few questions on IoT. They were generally mixed with other areas such as Kinesis Stream and DynamoDB. It required general understanding of Device Gateway, IoT Rules, Device Registry and Device Shadow. There was no MQTT related questions.
AWS EMR - Surprisingly not many questions on this topic for me. Understand advantages of using EMR with S3. Understand when to use core node vs task node. Good understanding of EMRFS and when to use it vs HDFS. Understand why running map reduce using S3 might be sometimes better than HDFS approach or vice versa (hint: temporary cluster vs permanent cluster)
Machine Learning - know the various types of models supported by AWS Machine Learning (binary classification, multi-classification or linear regression) and know when to select the right model for the specific business scenario. If the model is not supported in AML, Spark MLib might be the right choice.
Data Visualization - General features of QuickSight and how it is compared to other visualisation technology such as Tableau, Microstrategy etc. You also understand what is the quickest way to explore data generated from EMR, e.g. using notebooks such as Apache Zeppelin or Project Jupyter.
Security - Understand IAM roles, HSM (on-premise and cloud), data encryption support for S3, Redshift and DynamoDB.
S3 - there was quite a lot of questions on using S3 for data ingestion storage and storing EMR results after ETL processing. Do understand how to import data from S3 to Redshift for analysis. Nevertheless, with the recent introduction of AWS Athena, you can also consider using it for data analysis in S3.
Data Pipeline - Several questions on this for backup and restore of data into other AWS regions.
