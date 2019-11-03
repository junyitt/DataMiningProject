### Hive code to create table and insert movie data from rottentomatoes.com via csv
```
use mydb;

create table if not exists rtmovies(box_office int, director string, genre string, theater_date date, streaming_date date, rating string, runtime int, studio string, written_by string, audience_rating int, 
critics_consensus string, title string, tomatometer int, tomatometer_count int, url string, user_rating_count int)
row format delimited
fields terminated by '\;'
location '/user/hadoop/data_mining'
tblproperties("skip.header.line.count"="1");

load data local inpath 'C:\Users\jy\Desktop\DataMiningProject\Milestone2_DataManagement\hive_movie_info_semisep.csv' overwrite into table mydb.rtmovies;
```

### Hive code to create table and insert movie reviews data from rottentomatoes.com via csv
```
create table if not exists rtreviews(review string, url_id string)
row format delimited
fields terminated by '\;'
location '/user/hadoop/data_mining'
tblproperties("skip.header.line.count"="1");

load data local inpath 'C:\Users\jy\Desktop\DataMiningProject\Milestone2_DataManagement\hive_movie_reviews_semisep.csv' overwrite into table mydb.rtmovies;
```

### Hive code to create table and insert movie box office data from boxofficemojo.com via csv
```
create table if not exists mojomovies(close_date date, in_release int, widest_release int, domestic_gross int, foreign_gross int, opening_weekend int, movie_title_key string, total_gross int, opening_rank int, opening_theater int, opening_average int)
row format delimited
fields terminated by '\;'
location '/user/hadoop/data_mining'
tblproperties("skip.header.line.count"="1");

load data local inpath 'C:\Users\jy\Desktop\DataMiningProject\Milestone2_DataManagement\hive_movie_box_office_semisep.csv' overwrite into table mydb.rtmovies;
```

