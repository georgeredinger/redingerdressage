#!/bin/bash 
s3cmd put --acl-public --delete-removed --recursive sync   public/*  s3://redinger-dressage


