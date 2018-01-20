#!/usr/bin/env bash

curl -XDELETE "localhost:9200/zotero"
curl -XPUT "localhost:9200/zotero" -H "Content-Type: application/json" --data '{ "mappings": { "entry":{ "properties": { "issued" : { "type": "date", "format": "yyyy-MM-dd||yyyy-MM||yyyy" }, "accessed" : { "type": "date", "format": "yyyy-MM-dd||yyyy-MM||yyyy" }, "abstract":{ "type": "text" } } } } }'
curl -XPOST "http://localhost:9200/_bulk" -H 'Content-Type: application/json' --data-binary @request-data.json
