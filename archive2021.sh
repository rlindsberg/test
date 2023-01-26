#! /bin/bash

echo "202109_chunks.csv"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2021-09-01' AND '2021-09-30' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202109_chunks.csv

echo "202110_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2021-10-01' AND '2021-10-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202110_chunks.csv


echo "202111_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2021-11-01' AND '2021-11-30' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202111_chunks.csv


echo "202112_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2021-12-01' AND '2021-12-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202112_chunks.csv