single node hadoop
mysql +njdbc driver
sqoop
hive
us se hum etl pip line create kare ge
data hdfs par load kaise kare ge

ubuntu 20.0
t2 .x large
50 gb

install hadoop.1x

follow MSQL-SQOOP-HIVE-DEPOLYMENT.TXT SCRIP

data base hum log us sell ke data ke liye banate hai 


sudo apt-get install mysql-server mysql-client -y

service mysql status

sudo mysqladmin -u root -p version

sudo mysqladmin -u root -p status

sudo mysql -u root -p

# Give password to mysql

mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root@123';
mysql> exit;

sudo service mysql stop
sudo service mysql start

sudo mysql -u root -p

mysql> show databases;
mysql> CREATE DATABASE jinga_db;
mysql> GRANT ALL PRIVILEGES ON jinga_db.* TO 'root'@'localhost';
mysql> show databases;
mysql> USE jinga_db;
mysql> show tables;
mysql> CREATE TABLE user_data(first_name VARCHAR(50) NOT NULL,
  company_name VARCHAR(100),
  address VARCHAR(100),
 country VARCHAR(50),
 city VARCHAR(50),
 state VARCHAR(50));

mysql> desc user_data;
 
exit;
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf

secure_file_priv = "" 

sqoop  deployment

wget http://archive.apache.org/dist/sqoop/1.4.4/sqoop-1.4.4.bin__hadoop-1.0.0.tar.gz

tar -zxvf sqoop-1.4.4.bin__hadoop-1.0.0.tar.gz

sudo mv sqoop-1.4.4.bin__hadoop-1.0.0 /usr/local/sqoop/

nano ~/.bashrc
export SQOOP_PREFIX="/usr/local/sqoop/"
export SQOOP_CONF_DIR="$SQOOP_PREFIX/conf"
export SQOOP_CLASSPATH="$SQOOP_CONF_DIR"
export PATH="$SQOOP_PREFIX/bin:$PATH"

exec bash

cd $SQOOP_PREFIX/conf

mv sqoop-env-template.sh sqoop-env.sh

nano sqoop-env.sh
export HADOOP_COMMON_HOME=/usr/local/hadoop 
export HADOOP_MAPRED_HOME=/usr/local/hadoop
export ZOOKEPER_HOME=$ZOOKEEPER_HOME
export HBASE_HOME=$HBASE_HOME
export HIVE_HOME=$HIVE_HOME

install driver 

wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j_8.0.33-1ubuntu20.04_all.deb

dpkg -x mysql-connector-j_8.0.33-1ubuntu20.04_all.deb ./

cp usr/share/java/mysql-connector-j-8.0.33.jar /usr/local/sqoop/lib/

cd $SQOOP_PREFIX/bin

sqoop-version



**********************HIVE Installation(Data Query)************************

sudo apt-get update && sudo apt-get upgrade -y

wget https://dlcdn.apache.org/hive/hive-1.2.2/apache-hive-1.2.2-bin.tar.gz

tar -xzvf apache-hive-1.2.2-bin.tar.gz

sudo mv apache-hive-1.2.2-bin /usr/local/hive

cat>>.bashrc<<EOL
export HIVE_HOME=/usr/local/hive
export PATH=$PATH:/usr/local/hive/bin
EOL

bash

cp $HIVE_HOME/conf/hive-env.sh.template $HIVE_HOME/conf/hive-env.sh
cat>>$HIVE_HOME/conf/hive-env.sh<<EOL
export HADOOP_HOME=/usr/local/hadoop
EOL

hadoop fs -mkdir /user/ubuntu/

hive 
(it will throw an error, we do this just so that tmp directory gets created for further processes of hive)

hadoop fs -chmod -R 777 /tmp

cd

hive
exit;

copy create-db .sql 

follow etlpip line scrip    2 21 minute


