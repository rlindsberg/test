#! /bin/bash

echo "202201_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-01-01' AND '2022-01-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202201_chunks.csv


echo "202202_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-02-01' AND '2022-02-28' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202202_chunks.csv


echo "202203_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-03-01' AND '2022-03-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202203_chunks.csv


echo "202204_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-04-01' AND '2022-04-30' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202204_chunks.csv