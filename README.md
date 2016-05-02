# what 

This was a result of a conversation I had with a friend who was interested in learning about sqlite and the domain name system, it seemed like a simple way to get started. 

The current project uses a great free dataset from use https://scans.io/study/axfr-research to simplify the process.

This script assumes you have sqlite3 and a recent version of bash, tested on debian(jessie) and ubuntu 16.04.

The command.sh script takes in n parameters, the first of which must be the sqlite database name. Additional parameters are files containing sql queries which you would like to run against the database. 

The project comes with an example query file(`other_queries.sql`) but you will have to download the dataset and extract it yourself. 

# how

configuration:

  `chmod +x command.sh`

sample:

  `./command.sh master.sqlite other_queries.sql`

output:

```
*other_queries.sql* result:
  955417 dm2ns
  509919 domains
  130404 nameservers
  6853165 scanned
```
# more 

* https://www.sqlite.org/lang.html
* https://scans.io/study/axfr-research
* https://en.wikipedia.org/wiki/Zone_file

Here is the schema for the sqlite database as it currently exists if you want to write your own queries:
```
CREATE TABLE "axfr"(
  dm TEXT,
  own TEXT,
  ttl TEXT,
  rr TEXT,
  data TEXT
);
CREATE TABLE "dm2ns"(dm TEXT,ns TEXT);
CREATE TABLE "domains"(dm TEXT);
CREATE TABLE "nameservers"(ns TEXT);
CREATE TABLE "scanned"(dm TEXT);
```