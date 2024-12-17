#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Edit fastfetch.jsonc
cat /usr/share/ublue-os/bazzite/fastfetch.jsonc | \
# Handle trailing comma
sed -z 's/,\s*}/\n}/' | \
# Change logo type
jq '.logo.type = "chafa"' | \
# Change logo source
jq '.logo.source = "/usr/share/asen23/logo.png"' | \
# Remove unused color param
jq 'del(.logo.color)' | \
# Write result
tee /usr/share/ublue-os/image-info.json

