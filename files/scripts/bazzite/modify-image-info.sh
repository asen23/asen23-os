#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Edit image-info.json
cat /usr/share/ublue-os/image-info.json | \
# Change image ref
jq '."image-ref" = "ostree-image-signed:docker://ghcr.io/asen23/bazzite"' | \
# Write result
tee /usr/share/ublue-os/image-info.json

