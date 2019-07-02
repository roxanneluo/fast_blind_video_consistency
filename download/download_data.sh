#!/bin/bash

SET=$1

if [[ $SET != "train" && $SET != "test" && $SET != "all" && $SET != "results" ]]; then
    echo "Usage: ./download_dataset.sh SET"
    echo "SET options:"
    echo " \t train   - download training data (25 GB)"
    echo " \t test    - download testing data (16 GB)"
    echo " \t all     - download both training and testing data (41 GB)"
    echo " \t results - download results of Bonneel et al. and our aproach ( GB)"
    exit 1
fi

URL=http://vllab1.ucmerced.edu/~wlai24/video_consistency/data
DATA_DIR=data

if [[ $SET == "train" ]]; then
    wget -N $URL/train.zip
    unzip train.zip -d ${DATA_DIR}
fi


if [[ $SET == "test" ]]; then
    wget -N $URL/test.zip
    unzip test.zip -d ${DATA_DIR}
fi


if [[ $SET == "all" ]]; then
    wget -N $URL/train.zip
    unzip train.zip -d ${DATA_DIR}

    wget -N $URL/test.zip
    unzip test.zip -d ${DATA_DIR}
fi

if [[ $SET == "results" ]]; then
    wget -N $URL/results.zip
    unzip results.zip -d ${DATA_DIR}
fi
