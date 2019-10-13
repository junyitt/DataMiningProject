# Installation Guide for Hadoop and Hive

**Important Note**
*always open command prompt as administrator*
*restart command prompt after editing the environment variables*  
  
Operating System: Windows 10 64-bit

## Java
1. Download Java (jre-8u212-windows-x64.exe) from:
  - <https://github.com/frekele/oracle-java/releases>

2. Install to C:\Java


## Hadoop
1. Download Hadoop version 2.8.0
  - <http://archive.apache.org/dist/hadoop/core//hadoop-2.8.0/hadoop-2.8.0.tar.gz>

2. Extract the .tar.gz file twice using 7z

3. Move hadoop to 
```
C:\hadoop
```

4. Go to environment variable in system properties
```
create a new user variable. HADOOP_HOME : C:\hadoop\bin
create a new user variable. JAVA_HOME : C:\Java\jdk1.8.0_212\bin
```

5. Set both paths to system variable path:
```
C:\hadoop\bin
C:\hadoop\sbin
C:\Java\jdk1.8.0_212\bin
```

Hadoop Configurations
1. Edit the file core-site.xml in the hadoop/etc/hadoop directory. Copy this xml property in the configuration in the file.
```	
<configuration>
   <property>
       <name>fs.defaultFS</name>
       <value>hdfs://localhost:9000</value>
   </property>
</configuration>
```

2. Edit mapred-site.xml and copy this property in the cofiguration
```
<configuration>
   <property>
       <name>mapreduce.framework.name</name>
       <value>yarn</value>
   </property>
</configuration>
```
   
3. Create a folder 'data' in the hadoop directory
  - create 2 folders inside the 'data' folder, named 'datanode' and 'namenode'
  
  
4. Edit the file hdfs-site.xml and add below property in the configuration
  
Note: The path of namenode and datanode across value would be the path of the datanode and namenode folders you just created.
 
```
<configuration>
   <property>
       <name>dfs.replication</name>
       <value>1</value>
   </property>
   <property>
       <name>dfs.namenode.name.dir</name>
       <value>/hadoop/data/namenode</value>
   </property>
   <property>
       <name>dfs.datanode.data.dir</name>
       <value>/hadoop/data/datanode</value>
   </property>
</configuration>
```

4b. Format namenode
```
hadoop namenode -format
```

5. Edit the file yarn-site.xml and add below property in the configuration
```
<configuration>
   <property>
    	<name>yarn.nodemanager.aux-services</name>
    	<value>mapreduce_shuffle</value>
   </property>
   <property>
      	<name>yarn.nodemanager.auxservices.mapreduce.shuffle.class</name>  
	<value>org.apache.hadoop.mapred.ShuffleHandler</value>
   </property>
</configuration>
```
  
6. Edit hadoop-env.cmd and replace %JAVA_HOME% with the path of the java folder where your jdk 1.8 is installed
```
set JAVA_HOME=C:\Java\jdk1.8.0_212\bin
```
  
7. Download and extract the bin folder. Replace the hadoop bin folder.
  - <https://github.com/MuhammadBilalYar/HADOOP-INSTALLATION-ON-WINDOW-10/blob/master/Hadoop%20Configuration.zip>
  
8. Check whether hadoop is successfully installed:
```
hadoop version
```

9. Start hadoop
```
start-dfs.cmd
start-yarn.cmd
```

10. Resource manager:
  - <http://localhost:8088/cluster>

11. Check details about hdfs (namenode and datanode)
  - <http://localhost:50070>
  - OR (later hadoop version) <http://localhost:9870/> 



## Hive
1. Download Hive (apache-hive-2.1.0-bin.tar.gz)
  - <https://archive.apache.org/dist/hive/hive-2.1.0/>

2. Extract twice 

3. Move apache-hive-2.1.0-bin folder to C:\apache-hive-2.1.0-bin\

4. Download hive-site.xml
  - <https://drive.google.com/file/d/1qqAo7RQfr5Q6O-GTom6Rji3TdufP81zd/view>
  
5. Copy hive-site.xml to C:\apache-hive-2.1.0-bin\conf

## Apache Derby
1. Download Derby Metastore (db-derby-10.12.1.1-bin.tar.gz)
  - <https://archive.apache.org/dist/db/derby/db-derby-10.12.1.1/>

2. Extract twice

3. Move db-derby-10.12.1.1-bin to C:\db-derby-10.12.1.1-bin

## Hive Configurations
1. Copy all files in 
```
C:\db-derby-10.12.1.1-bin\lib to C:\apache-hive-2.1.0-bin\lib
```
2. Go to System Properties > Advanced > Environment Variables
```
Create new user variable. HIVE_HOME : C:\apache-hive-2.1.0-bin
HIVE_BIN: C:\apache-hive-2.1.0-bin\bin
HIVE_LIB: C:\apache-hive-2.1.0-bin\lib
DERBY_HOME : C:\db-derby-10.12.1.1-bin
HADOOP_USER_CLASSPATH_FIRST : true  (add this to system variables as well)
```
3. Edit the **system** environment path:
```
Add C:\apache-hive-2.1.0-bin\bin
Add C:\db-derby-10.12.1.1-bin\bin
```

## Run
1. Run Hadoop: 
```
start-dfs.cmd
start-yarn.cmd
```

2. Run Apache Derby Network Server
```
startNetworkServer -h 0.0.0.0
```

3. Run Hive
```
hive
```

4. Create an example database
```
hive > create DATABASE testdb;
hive > SHOW DATABASES;
hive > CREATE TABLE students (name VARCHAR(64), age INT, gpa DECIMAL(3, 2));
hive > INSERT INTO TABLE students VALUES ('fred flintstone', 35, 1.28), ('barney rubble', 32, 2.32);
```


## References:
1. Java & Hadoop installations
- <https://www.datasciencecentral.com/profiles/blogs/how-to-install-and-run-hadoop-on-windows-for-beginners>

2. Hive installation
- <https://www.youtube.com/watch?v=npyRXkMhrgk>

