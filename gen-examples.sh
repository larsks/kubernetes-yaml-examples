#!/bin/sh

make

cat > examples.md <<EOF
# JSON vs YAML Examples

EOF

ls -tr *.json | while read json; do
yaml="${json%.json}.yaml"
cat >> examples.md <<EOF
## Source file: $json

Original JSON source:

$(sed 's/^/    /' $json)

Converted to YAML:

$(sed 's/^/    /' $yaml)
EOF
done

