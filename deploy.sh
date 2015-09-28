#!/bin/bash 
hugo -v
s3cmd put -MP sync   public/*  s3://redinger-dressage/
s3cmd put -P --delete-removed --recursive  -m "text/css" public/static/css/*  s3://redinger-dressage/css/
s3cmd put -P --delete-removed --recursive  -m "text/css" public/static/css/hightlight/*  s3://redinger-dressage/css/
s3cmd put -P --delete-removed --recursive  sync -m "application/javascript" public/static/js/*  s3://redinger-dressage/css/

