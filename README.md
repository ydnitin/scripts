scripts
=======
Simple bash script to delete oldest index when the disk usage hits 90%. 
Assumptions: 
* All indices are stored in /opt/elasticsearch/data/elasticsearch/nodes/0/indices/
* Mount point for ES storage partition is /opt/elasticsearch/data
