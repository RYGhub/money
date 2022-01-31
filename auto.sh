#!/bin/bash

git pull
chmod 444 ryg.beancount
chmod 700 auto.sh
./venv/bin/python -m fava.cli -p 30080 ryg.beancount