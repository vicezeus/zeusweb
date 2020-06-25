#!/bin/bash

REPOSITORY=/home/ec2-user/app/step2
PROJECT_NAME=zeusweb

echo "> Build file copy"

cp $REPOSITORY/zip/*.war $REPOSITORY/

echo "> Now pid"

CURRENT_PID=$(pgrep -fl zeusweb | grep war | awk '{print $1}')

echo "> Now pid: $CURRENT_PID"

if [ -z "$CURRENT_PID" ]; then
  echo "> Now Service Is Not Exit"
else
  echo "> kill -15 $CURRENT_PID"
  kill -15 $CURRENT_PID
  sleep 5
fi

echo "> New Application Deploy"

JAR_NAME=$(ls -tr $REPOSITORY/*.war | tail -n 1)

echo "> JAR Name: $JAR_NAME"

echo "> $JAR_NAME Run chmod"

chmod +x $JAR_NAME

echo "> $JAR_NAME Run Application"

nohup java -jar \
    -Dspring.config.location=classpath:/application.properties,/home/ec2-user/app/application-real-db.properties \
    $JAR_NAME > $REPOSITORY/nohup.out 2>&1 &