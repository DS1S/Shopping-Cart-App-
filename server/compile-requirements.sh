#!/bin/bash

pip-compile requirements/requirements.in 
pip-compile requirements/dev-requirements.in
FILE=requirements.txt
if test -f $FILE; then
    rm $FILE
fi
 cp requirements/requirements.txt requirements.txt