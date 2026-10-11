#!/bin/bash

# vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:



set -Ceu

DATE="$(date --utc --iso-8601=seconds)"
DEFAULT_IFS="$IFS"
EXTENSION=""
DIRECTORY="$(pwd)"

usage() {
cat << EOF
usage: $(basename "$0") [-h] [-w DIRECTORY] [-e EXTENSION] DATE

optional arguments:
    -h, --help                show this help message and exit
    -d, --directory           working directory (default: $DIRECTORY)
    -e, --extension           target file extension
EOF
}

for OPTION in $@
do
    case "$OPTION" in
        -d|--directory)
            DIRECTORY="$2"
            shift 2
            ;;
        --directory=*)
            DIRECTORY="$(echo "$1" | tr --delete  '"' | tr --delete "'" | cut --delimiter "=" --fields 2)"
            shift 1
            ;;
        -e|--extension)
            EXTENSION="$2"
            shift 2
            ;;
        --extension=*)
            EXTENSION="$(echo "$1" | tr --delete  '"' | tr --delete "'" | cut --delimiter "=" --fields 2)"
            shift 1
            ;;
        -h|--help)
            usage
            exit 0
            ;;
    esac
done

if [ "$#" -ge 1 ]; then
    DATE="$1"
fi

if [ -n "$EXTENSION" ]; then
    if [ "$(echo "$EXTENSION" | head --bytes 1)" != "." ]; then
        EXTENSION=".$EXTENSION"
    fi
fi

FIND_OPTIONS=""
if [ -n "$EXTENSION" ]; then
    FIND_OPTIONS='-iname '"*$EXTENSION"
fi

DELTA="0"
IFS=$'\n'
for FILE in $(find "$DIRECTORY" -type f $FIND_OPTIONS | sort --human-numeric-sort)
do
    TIME="$(date "+%Y%m%d%H%M.%S" --date "$DATE + $DELTA seconds")"
    touch -t "$TIME" "$FILE"
    DELTA="$((DELTA + 1))"
done
IFS="$DEFAULT_IFS"



# Local variables:
# tab-width: 4
# c-basic-offset: 4
# c-hanging-comment-ender-p: nil
# End:
