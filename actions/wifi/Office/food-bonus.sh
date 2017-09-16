#!/bin/bash

DATE=`date +%Y-%m-%d`
if [ ! -f "/tmp/$DATE-food-bonus" ]; then
    touch "/tmp/$DATE-food-bonus"
    open https://docs.google.com/forms/d/e/$FOODBONUSID/viewform?c=0&w=1
else
    echo "script already ran"
fi