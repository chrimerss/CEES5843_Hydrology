#!/bin/bash

cd /content

pip -q install nose  > /dev/null 2>&1 

apt-get -q -y install python-gdal gdal-bin  > /dev/null 2>&1 

apt-get -q -y install python-netcdf4  > /dev/null 2>&1 

for fname in *.zip; do unzip $fname; done

pip install -r requirements.txt

cd cresthh/crest && python setup.py install
