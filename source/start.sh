#!/bin/bash -e

if [ -z "$NETWORK" ]; then 
    net=10.0.0.1/16
else
    net=$NETWORK
fi

log_file=/tmp/distcc.log
touch $log_file
distccd --allow=$net --daemon --log-file $log_file

tail -f $log_file
