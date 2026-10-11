#!/bin/sh

# vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:



set -Cu

IFS='
'
TIME=`/bin/date -j -f "%Y-%m-%d %H:%M:%S" "$1" "+%s"`

for FILE in `ls | sort --numeric`
do
    DATE=`/bin/date -r $TIME "+%m/%d/%Y %H:%M:%s"`
    SetFile -d "$DATE" -m "$DATE" "$FILE"
    TIME=`expr $TIME + 60`
done



# Local variables:
# tab-width: 4
# c-basic-offset: 4
# c-hanging-comment-ender-p: nil
# End:

