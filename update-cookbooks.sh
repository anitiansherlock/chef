#!/bin/bash
librarian-chef install
for book in `ls cookbooks`; do
  rm -rf $book && mv cookbooks/$book .
done
