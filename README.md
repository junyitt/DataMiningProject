# Data Mining Project

## Team Members:
1. Cheah Jun Yitt (WQD180107)
2. Tan Yin Yen (WQD180108)

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
Refer to: <https://github.com/junyitt/DataMiningProject/blob/master/DataManagement/PreMilestone2.md>


### Clean Data and Store the Data in Hive Data Warehouse
1. Movie information (rottentomatoes.com) - hive_movie_info_semisep.csv
2. Movie Reviews (rottentomatoes.com) - hive_movie_reviews_semisep.csv
3. Movie Box Office Data (boxofficemojo.com) - hive_movie_box_office_semisep.csv
4. Store the 3 CSV to Hive  - Refer to: <https://github.com/junyitt/DataMiningProject/blob/master/DataManagement/CreateHiveTables.md>


## Milestone 3 (Processing of Data):
### Part 1: Export Data to CSV from Hive

### Part 2: Data Cleaning and Features Engineering
- Clean and Extract Features from Rotten Tomatoes Movie Info Data (rottentomatoes.com)
- Clean and Extract Features from Box Office Data (boxofficemojo.com)

### Part 3: Sentiment Analysis
- Sentiment Analysis on Rotten Tomatoes Review Data
- Assigning a sentiment score, and aggregating the sentiment score for each movie

### Part 4: Merging of Features and Attributes from all 3 sources of data

### Part 5: SEM in SAS Enterprise Miner (Part 1 of SEMMA Methodology)
1. Analysis Goal  
- A movie streaming company (Netflix) seeks to maximize customer's retention by recommending highly rated movies with DVD or streaming options available to their users. 
- Use sentiment score of user reviews on a movie, movie information and box office data to predict the user ratings of a movie.

Implications:  
- By predicting the user ratings of a movie based on its reviews and box office achievement, the movie streaming company can filter out latest movies with DVD or streaming options available that are highly rated and recommend them to its users.
- Customers who are satisfied with the movie recommendations are more likely to subscribe to the movie streaming service in the next month. 

2. Analysis Data  
- Movie information and movie reviews data were scraped from rottentomatoes.com. Movie box office data were scraped from boxofficemojo.com
- The binary target variable (audience score indicator) is balance, i.e. 50% good and 50% bad.

3. Table properties 
![alt text](https://raw.githubusercontent.com/junyitt/DataMiningProject/master/Milestone3_DataProcessing/images/table_properties.JPG)
[File Import, Graph Explore]
- 4878 rows
- 44 columns

4. Column Metadata   
![alt text](https://raw.githubusercontent.com/junyitt/DataMiningProject/master/Milestone3_DataProcessing/images/column_metadata.JPG) 
[File Import > Explore]
- MPAA Film Rating (Binary) (G, NC17,...,R)
- audience_score, audience_score_positive, movie_score, movie_score_positive are the target variables. Currently, we are interested in the audience_score_positive binary target. (Reject the rest)
- The 11 genre clusters are binary values.
- The sentiment, box office values, and number of ratings are all interval values.
- The title (movie title, nominal data) is set as the ID, and should not be used in the analysis.

5. Diagram (SEM) 
![alt text](https://raw.githubusercontent.com/junyitt/DataMiningProject/master/Milestone3_DataProcessing/images/diagram.JPG)
- Sample - File Import
- Explore - Graph Explore and File Import > Explore
- Modify - Impute

6. Explore Data Source - First View
- Histogram (File Import > Explore) 
- Identify missing data

7. Cleansing of Data 
- Show missing value in bin
- Impute the missing value

8. Pie Chart of Target Variable
![alt text](https://github.com/junyitt/DataMiningProject/blob/master/Milestone3_DataProcessing/images/pie_chart.bmp)
- Shows approximately 50% True (good movie) and 50% False (bad movie).


## Milestone 4(Interpretation of Data):
### Part 1: Data Partition 
- Split the data into 50% training set and 50% validation set for modelling

### Part 2: Model (Using decision tree)
##### Split the nodes based on three factors:
1. Information gain: Selecting attribute with high information gain is preferred.
2. Interpretability: Selecting attribute with a slightly lower information gain but can be easily understood and explained is preferred.
3. Diversity: Using attributes from various sources is preferred (as established in previous milestones), hence it is preferred to split the nodes with consideration of attributes from movie information, movie reviews (sentiment score) and movie box office performance. 

##### Subtree Assessment Plot
- Determine how many leaves are sufficient to build a decision tree model that have a low misclassification rate, easily interepreted and understood for decision making.







