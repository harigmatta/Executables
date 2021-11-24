CREATE DATABASE IF NOT EXISTS ${hivevar:DBNAME};

CREATE EXTERNAL TABLE IF NOT EXISTS ${hivevar:DBNAME}.HIST_TBL_RECORD_RECON (
  SrcPath String,
  SrcPathCount BIGINT,
  TknPath STRING,
  TknPathCount BIGINT,
  CloudPath STRING,
  CloudPathCount BIGINT,
  `Timestamp` TIMESTAMP,
  DbName STRING,
  TableName STRING
  ) Partitioned BY (`Date` INT ) 
  STORED AS ORC
  LOCATION '${hivevar:LOCATION}/HIST_TBL_RECORD_RECON';


CREATE EXTERNAL TABLE IF NOT EXISTS ${hivevar:DBNAME}.INC_TBL_RECORD_CNT_RECON (
  SrcPath STRING, 
  SrcPathCount BIGINT,
  CloudPath STRING,
  CloudPathCount BIGINT,
  `Partition` STRING,
  `Timestamp` TIMESTAMP,
   DbName STRING,
   TableName STRING
  ) Partitioned BY (`Date` INT ) 
  STORED AS ORC
  LOCATION '${hivevar:LOCATION}/INC_TBL_RECORD_CNT_RECON';
  
  
CREATE EXTERNAL TABLE IF NOT EXISTS ${hivevar:DBNAME}.HIST_TBL_PRT_FILE_CNT_RECON (
  DbName STRING,
  SrcPartition String,
  SrcFileCount BIGINT,
  TknPartition String,
  TknFileCount BIGINT,
  CloudPartition String,
  CloudFileCount BIGINT,
  `Timestamp` TIMESTAMP,
  ) Partitioned BY (TableName STRING, `Date` INT ) 
  STORED AS ORC
  LOCATION '${hivevar:LOCATION}/HIST_TBL_PRT_FILE_CNT_RECON';
  
  
 CREATE EXTERNAL TABLE IF NOT EXISTS ${hivevar:DBNAME}.INC_TBL_PRT_FILE_CNT_RECON (
  DbName STRING,
  TableName STRING,
  SrcPartition String,
  SrcFileCount BIGINT,
  CloudPartition STRING,
  CloudFileCount BIGINT,  
  `Timestamp` TIMESTAMP,
  ) 
  Partitioned BY (`Date` INT )
    STORED AS ORC
  LOCATION '${hivevar:LOCATION}/INC_TBL_PRT_FILE_CNT_RECON';
  
