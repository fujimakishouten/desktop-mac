#!/bin/sh

PROCESSES=6
INPUT="input"
OUTPUT="output"
TYPE=".png"
COMMAND="realesrgan-ncnn-vulkan -m /opt/realesrgan/realesrgan/models -n realesrgan-x4plus-anime -s 4"


INPUT="${INPUT%/}"
OUTPUT="${OUTPUT%/}"
if [ ! -d "$INPUT" ]; then
    echo "Input directory does not found." >&2
    exit 1
fi
if [ ! -d "$OUTPUT" ]; then
    mkdir -p "$OUTPUT"
fi

find "$INPUT" -type f | xargs -I {} -P $PROCESSES zsh -c '
    SOURCE="{}"

    FILE="$(basename "${SOURCE%.*}").'${TYPE#.}'"
    DIRECTORY=$(dirname "${SOURCE#${INPUT}}")
    DESTINATION="'${OUTPUT%/}'/${DIRECTORY#/}/${FILE}"

    $COMMAND -i "$SOURCE" -o "$DESTINATION"
'

