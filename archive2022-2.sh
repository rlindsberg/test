#! /bin/bash

echo "202205_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-05-01' AND '2022-05-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202205_chunks.csv


echo "202206_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-06-01' AND '2022-06-30' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202206_chunks.csv


echo "202207_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-07-01' AND '2022-07-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202207_chunks.csv


echo "202208_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-08-01' AND '2022-08-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202208_chunks.csv


echo "202209_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-09-01' AND '2022-09-30' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202209_chunks.csv


echo "2022010_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-10-01' AND '2022-10-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 2022010_chunks.csv


echo "202211_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-11-01' AND '2022-11-30' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 202211_chunks.csv


echo "2022012_chunks"
time mysql -u samla samla -h samla-backend-databasestack-10jwynz8q11-dbcluster-nh5p19r8e3wu.cluster-cqgsh4vfu0nw.eu-west-1.rds.amazonaws.com     -e "SELECT c.filename, DATE(c.createDate) as registered_date, rd.name as root_domain, d.name as leaf_domain FROM Chunk c, LogDomain d, LogDomain rd WHERE c.domain=d.id and d.root = rd.id and DATE(c.createDate) BETWEEN '2022-12-01' AND '2022-12-31' ORDER BY c.createDate "     --batch | tr "\t" "," | tail -n+2 > 2022012_chunks.csv

