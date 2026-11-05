#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
src_dir="$script_dir/src"
archive="$script_dir/windowgesturesrevived@vanceral.github.io.zip"

# Compile first so the distributable includes a schema cache. The command is
# safe to run repeatedly, including from a clean checkout.
glib-compile-schemas --strict "$src_dir/schemas"

rm -f "$archive"
(
    cd "$src_dir"
    zip -X -r "$archive" ./*
)
