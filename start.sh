#!/bin/bash

ansible-playbook /opt/devops/cassandra.yml

sleep 10

ssh root@192.168.0.109 "service cassandra start"; ssh root@192.168.0.113 "service cassandra start";

sleep 60

ssh root@192.168.0.110 "service cassandra start"; 

sleep 60

ssh root@192.168.0.114 "service cassandra start";

sleep 60

ssh root@192.168.0.112 "service cassandra start";

sleep 60

ssh root@192.168.0.116 "service cassandra start";


