#!/bin/sh

case $BLOCK_BUTTON in
    1) st -n newsboat -e /bin/bash -ic newsboat -x reload ;;
    2) ;;
esac

newsboat -x reload
num_articles=$(newsboat -x print-unread | awk '{print $1}')

echo "$num_articles"

