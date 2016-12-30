#!/bin/sh

trap "postfix stop" SIGINT
trap "postfix stop" SIGTERM
trap "postfix reload" SIGHUP

postfix start

sleep 3

while kill -0 "`cat /var/spool/postfix/pid/master.pid | xargs`" &> /dev/null; do
  sleep 5
done
