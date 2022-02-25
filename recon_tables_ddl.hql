CREATE DATABASE IF NOT EXISTS ${hivevar:DBNAME};

CREATE EXTERNAL TABLE IF NOT EXISTS ${hivevar:DBNAME}.REVCP_RECORD_CNT_RECON (
  CloudPath STRING,
  CloudPathCount BIGINT,
  StgPath STRING,
  StgPathCount BIGINT,
  TgtPath STRING,
  TgtPathCount BIGINT,
  `Partition` STRING,
  `Timestamp` TIMESTAMP,
   DbName STRING,
   TableName STRING
  ) Partitioned BY (`Date` INT ) 
  STORED AS ORC
  LOCATION '${hivevar:LOCATION}/REVCP_RECORD_CNT_RECON';

 CREATE EXTERNAL TABLE IF NOT EXISTS ${hivevar:DBNAME}.REVCP_FILE_CNT_CLOUD_RECON (
  DbName STRING,
  TableName STRING,
  CloudPartition STRING,
  CloudFileCount BIGINT,
  StgPartition STRING,
  StgFileCount BIGINT,
  TgtPath STRING,
  TgtFileCount BIGINT
  `Timestamp` TIMESTAMP
  ) 
  Partitioned BY (`Date` INT )
  STORED AS ORC
  LOCATION '${hivevar:LOCATION}/REVCP_RECORD_CNT_REV_RECON';
  
