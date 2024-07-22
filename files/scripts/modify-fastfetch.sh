#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Edit image-info.json
# Change logo type
yq -i -o=json -I=4 '.logo.type = "chafa"' /usr/share/ublue-os/bazzite/fastfetch.jsonc
# Change logo source
yq -i -o=json -I=4 '.logo.source = "/usr/share/asen23/logo.png"' /usr/share/ublue-os/bazzite/fastfetch.jsonc
# Remove unused color param
yq -i -o=json -I=4 'del(.logo.color)' /usr/share/ublue-os/bazzite/fastfetch.jsonc
