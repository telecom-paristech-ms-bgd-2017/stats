#!/bin/bash

# Create virtual environment for python

PYTHON_VERSION="python3.5"
ENV_NAME="glegoux"

echo "*** Create directory python-env/" && \
pwd && mkdir -v -p python-env/ && \
echo "*** Create virtual environment" && \
cd python-env/ && pwd && \
virtualenv -v "${ENV_NAME}" -p "${PYTHON_VERSION}" && \
cd "${ENV_NAME}" && pwd && \
echo "*** Go to virtual environment" && \
source bin/activate && \
cd ../.. && pwd && \
echo "*** Install third library in your virtual environement" && \
pip -v install -r requirements.txt && \
echo "*** Launch jupyter notebook" && \
jupyter notebook
