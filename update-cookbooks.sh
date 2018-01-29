#!/bin/bash
librarian-chef install
for book in `ls cookbooks`; do
  rm -rf $book && mv cookbooks/$book .
done
sed  -i.bak 's/}}$/},"depends":"apache2"}/' kibana/metadata.json && rm kibana/metadata.json.bak
