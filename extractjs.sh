#! /bin/bash

grep -o '[^/]*\.js' $1 | sort -u
