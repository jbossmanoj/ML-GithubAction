MAX=95
EMAIL=mxkum20@lumen.com
PART=sda1
USE=`df -h |grep $PART | awk '{ print $5 }' | cut -d'%' -f1`
if [ $USE -gt $MAX ]; then
  echo "Percent used: $USE" | mail -s "Running out of disk space" $EMAIL
fi
