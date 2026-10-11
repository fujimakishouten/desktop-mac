#!/bin/sh

snap list --all | grep disabled | while read LINE
do
    NAME=$(echo $LINE | cut --delimiter " " --fields 1)
    REVISION=$(echo $LINE | cut --delimiter " " --fields 3)
    snap remove "$NAME" --revision "$REVISION"
done

