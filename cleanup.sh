#!/bin/sh
ansible all -m shell -a "service cassandra stop"
ansible all -m shell -a "ps -ef | grep cassandra"
ansible all -m shell -a "rm -rf /var/lib/cassandra/data/*"
ansible all -m shell -a "rm -rf /var/lib/cassandra/saved_caches"