#!/bin/bash

cd /content

pip -q install nose  > /dev/null 2>&1 

echo "[1/4]  Installing gdal..."

apt-get -q -y install python-gdal gdal-bin  > /dev/null 2>&1 

echo "[2/4]  Installing netCDF4 ..."
apt-get -q -y install python-netcdf4  > /dev/null 2>&1 

echo "[3/4]  uncompressing ..."
for fname in *.zip; do unzip $fname > /dev/null; done

echo "[4/4]  install python packages..."
pip install -r requirements.txt > /dev/null 2>&1

cd cresthh/crest && python setup.py install > /dev/null 2>&1

echo "Completed!"
