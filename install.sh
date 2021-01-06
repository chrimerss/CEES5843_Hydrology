#!/bin/bash

cd /content

pip -q install nose  > /dev/null 2>&1 

echo "Installing gdal..."

apt-get -q -y install python-gdal gdal-bin  > /dev/null 2>&1 

echo "Installing netCDF4 ..."
apt-get -q -y install python-netcdf4  > /dev/null 2>&1 

echo "uncompressing ..."
for fname in *.zip; do unzip $fname > /dev/null; done

echo "install python packages..."
pip install -r requirements.txt > /dev/null 2>&1

cd cresthh/crest && python setup.py install > /dev/null 2>&1

echo "Completed!"
