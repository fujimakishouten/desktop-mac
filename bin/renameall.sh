#!/bin/sh

# vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:



set -Cu


IFS='
'
for DIRECTORY in `find . type d | egrep -v ^\.$`
do
    cd $DIRECTORY && rename.py -z3 && cd ..
done



# Local variables:
# tab-width: 4
# c-basic-offset: 4
# c-hanging-comment-ender-p: nil
# End:

