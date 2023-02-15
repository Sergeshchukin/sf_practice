#!/bin/sh -e

apt-get update
apt-get -y upgrade
apt-get -y install python3 python3-pip libpq-dev
pip3 install psycopg2 Django
