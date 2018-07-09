DBPRO-DokCluster
=======================

Development of a Document Clustering System with carrot2 and elasticsearch
This Project is co-managed by the faculty of Informatic Technologie at the Technical University of Berlin

Installation
============

You can use the prepared Elasticsearch and Kibana server included in this project (in this case jump to point 6) or if you want to roll your own versions of the server:

1. Install [Elasticsearch v. 5.5.2](https://www.elastic.co/downloads/past-releases/elasticsearch-5-5-2)
2. Install [Kibana v. 5.5.2](https://www.elastic.co/de/downloads/past-releases/kibana-5-5-2)
3. [Follow the installation instruction of the Carrot2 plugin](https://github.com/carrot2/elasticsearch-carrot2/blob/master/README.md)
4. run the `setup.sh` file in the doc folder
5. open Kibana in the browser (while Kibana is open `localhost:5601`) and navigate to Management > Saved Objects > Import
   and upload `ExportVisualitions.json` in the doc directory
6. Now the two server can be run via the `run.sh` command (iOS and Linux only)
7. run the Spring server via `java -jar DokClusterWebGUI/target/spring-boot-web-application-example-0.0.1-SNAPSHOT.war`
8. open http://localhost:8800 to see if the server is running.

It should run under Windows, Linux and on a Mac.


More
====

Tools
----------------------

For More Infromations look at the documentation of the Tools.

1. [Kibana](https://www.elastic.co/products/kibana)
2. [elasticsearch](https://www.elastic.co/)
3. [carrot2](https://project.carrot2.org/)
4. [zotero](https://www.zotero.org/)
5. [Carrot2 plugin for ElasticSearch](https://github.com/carrot2/elasticsearch-carrot2)
6. ~~json-to-es-bulk~~


License
=======

Licensed under the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

