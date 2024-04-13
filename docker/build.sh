#!/bin/bash
set -ue


MYCAT_DIR=/usr/local/mycat
MYCAT_CONF=${MYCAT_DIR}/conf 
MYCAT_LOGS=${MYCAT_DIR}/logs

MYCAT_CLIENT_PROT=8066
MYCAT_MAMAGER_PORT=9066
MYCAT_ID=`date +"%Y%m%d%H%M"`
MYCAT_HUBAR_URL=mycat
MYCAT_IMAGE="${MYCAT_HUBAR_URL}:${MYCAT_ID}"


docker build -t ${MYCAT_IMAGE} .
if [ $? -qe 0 ];then
	docker run -it -d -p ${MYCAT_MAMAGER_PORT}:8066 -p ${MYCAT_MAMAGER_PORT}:9066 -v ${MYCAT_CONF}:/usr/local/mycat/conf -v ${MYCAT_LOGS}:/usr/local/mycat/logs ${MYCAT_IMAGE}
else
	echo "docker build ${MYCAT_IMAGE} fail, Please rebuild the ${MYCAT_IMAGE} image"
fi

