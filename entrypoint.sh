#!/bin/sh

if [ -f /data/_config.yml ]
then 
    cp -a /data/_config.yml .
fi

if [ -d /data/source ]
then
    rm -rf source
    ln -s /data/source .
fi

if [ -d /data/themes ]
then
    rm -rf themes
    ln -s /data/themes .
fi


# just call hexo directly
hexo $@