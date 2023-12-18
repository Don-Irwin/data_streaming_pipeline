. dcd.sh
#bring up images
docker-compose up -d
echo "sleeping 25"
sleep 25
echo "looking at HDFS"

#look at hdf
docker-compose exec cloudera hadoop fs -ls /tmp/

echo "creating topic"

docker-compose exec kafka kafka-topics --create --topic events --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:32181
sleep 3
docker-compose exec kafka kafka-topics --create --topic event_parameters --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:32181
echo "sleeping"
sleep 4

#spin up API endpoint flask container.
docker-compose exec -T mids env FLASK_APP=/w205/game_api.py flask run 2>/dev/null &
echo "sleeping"
sleep 4
echo "copying config files over"
echo "docker-compose exec -T spark bash -c \"cp /w205/log4j.properties ./conf/log4j.properties\""
docker-compose exec -T spark bash -c "cp /w205/log4j.properties ./conf/log4j.properties"


echo "doing the spark submit"
echo "docker-compose exec -T spark spark-submit /w205/separate_events_stream_2.py"

docker-compose exec -T spark spark-submit /w205/separate_events_stream_2.py &

#create hive tables
echo "docker-compose exec -T cloudera hive -f /w205/hive_table_creation.hql"
docker-compose exec -T cloudera hive -f /w205/hive_table_creation.hql 


docker-compose exec cloudera hadoop fs -ls /tmp/

google-chrome "http://localhost:5555/notebooks/system_demo.ipynb"

google-chrome "http://localhost:5555/notebooks/"

#echo "Run primative event pitcher/generator primative_event_pitcher.py"
echo "python primative_event_pitcher_ab.py>/dev/null"
echo "press and HOLD CTL+C to terminate:"
x=1
while [ $x -le 500 ]
do
  python primative_event_pitcher_ab_2.py >/dev/null
  docker-compose exec -T mids curl http://localhost:5000/shutdown
  docker-compose exec -T mids env FLASK_APP=/w205/game_api.py flask run 2>/dev/null &
  docker-compose exec presto presto --server presto:8080 --catalog hive --schema default -f /w205/query_hive_tables.hql 
  sleep 2
  echo "press and HOLD CTL+C to terminate:"
done

#python primative_event_pitcher.py  > log_event_pitcher.txt


#docker-compose down



