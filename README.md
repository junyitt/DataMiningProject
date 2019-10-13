# Data Mining Project

#### The project follows the following pipeline:  
- Objective & Acquisition of Data > Management of Data > Processing of Data > Interpretation of Data > Communication of Insights > Recommendations

## Objective:
- To come out with a model to predict the rating of the latest movie with DVD or streaming options available based on its box office performance and user reviews.
- To recommend user the top and latest movies with DVD or streaming options available based on the predicted rating.

## Milestone 1: Acquisition of Data
*Scope: Scrape data of latest 250 movies with DVD or streaming options available.*
1. Web Scraping (Part 1): Scrape movie information and user reviews from rottentomatoes.com
2. Web Scraping (Part 2): Scrape box office data from boxofficemojo.com

#### Data acquired:
1. Movie information (rottentomatoes.com): Director, Genre, In Theater Date, On Streaming Date, Rating, Runtime, Studio, Writer, Audience Score, Critics Consensus, Title, Tomatometer, Tomatometer Count, URL, User Rating Count
2. Movie Reviews (rottentomatoes.com): Reviews (short paragraph), URL (act as foreign key)
3. Movie Box Office Data (boxofficemojo.com): In Release (total days), Widest Release (number of theaters), Domestic Gross, Foreign Gross, Opening Weekend Gross, Opening Statistics, Movie Title (foreign key), Total Gross


## Milestone 2: 
### Pre-Milestone (Installation of Java, Hadoop, Apache Derby and Hive)
1. Java 
2. Hadoop 
3. Apache derby
4. Hive 

### Clean Data and Store the Data in Hive Data Warehouse
1. Movie information (rottentomatoes.com) - hive_movie_info_semisep.csv
2. Movie Reviews (rottentomatoes.com) - hive_movie_reviews_semisep.csv
3. Movie Box Office Data (boxofficemojo.com) - hive_movie_box_office_semisep.csv


