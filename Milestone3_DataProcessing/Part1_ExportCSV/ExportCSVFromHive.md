# Export CSV from Hive

1. Export the box office data from Hive to csv
```
use mydb;
insert overwrite local directory 'C:/Users/jy/Desktop/DataMiningProject/Milestone3_DataProcessing/Part1_ExportCSV/Output' row format delimited fields terminated by ',' select * from mydb.mojomovies;
```

2. Export the Rotten Tomatoes reviews data from Hive to csv
```
insert overwrite local directory 'C:/Users/jy/Desktop/DataMiningProject/Milestone3_DataProcessing/Part1_ExportCSV/Output' row format delimited fields terminated by ',' select * from mydb.rtreviews;
```

3. Export the Rotten Tomatoes movie information data from Hive to csv
```
insert overwrite local directory 'C:/Users/jy/Desktop/DataMiningProject/Milestone3_DataProcessing/Part1_ExportCSV/Output' row format delimited fields terminated by ',' select * from mydb.rtmovies;
```