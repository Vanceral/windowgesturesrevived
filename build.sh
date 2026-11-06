#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
src_dir="$script_dir/src"
archive="$script_dir/windowgesturesrevived@vanceral.github.io.zip"

# Validate schemas strictly without creating a generated cache. GNOME Shell
# compiles extension schemas as needed; EGO packages should include only XML.
glib-compile-schemas --strict --dry-run "$src_dir/schemas"
rm -f "$src_dir/schemas/gschemas.compiled"

rm -f "$archive"
(
    cd "$src_dir"
    zip -X "$archive" \
        donation-qr.svg \
        extension.js \
        manager.js \
        metadata.json \
        prefs.js \
        stylesheet.css \
        schemas/org.gnome.shell.extensions.windowgestures.gschema.xml
)
