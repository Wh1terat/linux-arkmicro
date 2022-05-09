#!/bin/bash
TOP=`pwd`


cd $TOP/build/

#./build.sh ark1668e_luyuan  clean

if [ $? != 0 ]; then
        echo build $1 error!
        exit 1
fi


./build.sh ark1668e_devb_emmc  config

if [ $? != 0 ]; then
        echo build $1 error!
        exit 1
fi


./build.sh ark1668e_devb_emmc  build  2>&1 | tee build.log

if [ $? != 0 ]; then
        echo build $1 error!
        exit 1
fi

#make clean
