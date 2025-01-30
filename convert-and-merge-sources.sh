#!/bin/sh

convert_tex_to_md() {
    directory=$1
    for tex_file in "$directory"/*.tex; do
        [ -e "$tex_file" ] || continue
        md_file="${tex_file%.tex}.md"
        pandoc --bibliography="literature.bib" --csl="ieee.csl" -s "$tex_file" -t markdown_strict --citeproc | perl -ne 'print if not /^---/.../^---/; END { print "\n" }' > "$md_file"
    done
}

convert_tex_to_md "study-types/_sources"
convert_tex_to_md "guidelines/_sources"

cat guidelines/_sources/*.md > guidelines/index.md
cat study-types/_sources/*.md > study-types/index.md
