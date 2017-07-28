#!/bin/bash

CASSANDRA='cassandra'
if [ "$USE_EXTERNAL_CASSANDRA" = true ] ; then
    CASSANDRA=''
fi

export DATA_SERVICES="rabbitmq $CASSANDRA memcached postgresql elasticsearch"
export LB_SERVICE="haproxy"
export COSCALE_SERVICES="rserve anomalydetectorservice alerter analysismanager api app cron datastore mailer pageminer reporter roller anomalymatcher triggermatcher rum rumdatareceiver collector rumaggregator"

