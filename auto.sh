#!/bin/bash
eval "git pull"
eval "chmod 444 ryg.beancount"
eval "./venv/bin/python -m fava.cli ryg.beancount"