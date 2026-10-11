#!/bin/sh

# vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:



set -Cu


DATABASE_DIRECTORY="$HOME/Library/Containers/com.fiplab.copyclip2/Data/Library/Application Support/CopyClip"
DATABASE_NAME="copyclip.sqlite"

echo "DELETE FROM ZCLIPPING;" | sqlite3 "$DATABASE_DIRECTORY/$DATABASE_NAME"
echo "VACUUM;" | sqlite3 "$DATABASE_DIRECTORY/$DATABASE_NAME"



# Local variables:
# tab-width: 4
# c-basic-offset: 4
# c-hanging-comment-ender-p: nil
# End:

