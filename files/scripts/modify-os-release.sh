#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Edit os-release
sed -i '/^PRETTY_NAME/s/Bazzite/Azurite/' /usr/lib/os-release
sed -i 's/^NAME=.*/NAME="Azurite"/' /usr/lib/os-release
sed -i 's|^CPE_NAME="CPE_NAME="cpe:/o:universal-blue:bazzite|CPE_NAME="cpe:/o:asen23:azurite|' /usr/lib/os-release
sed -i 's/^DEFAULT_HOSTNAME=.*/DEFAULT_HOSTNAME="azurite"/' /usr/lib/os-release
sed -i 's/^VERSION_CODENAME=.*/VERSION_CODENAME="Rhea"/' /usr/lib/os-release
sed -i 's/^ID=.*/ID=azurite/' /usr/lib/os-release
# sed -i "s/^BUILD_ID=.*/BUILD_ID=${GITHUB_SHA::7}/" /usr/lib/os-release
sed -i 's/^VARIANT_ID.*/VARIANT_ID=azurite/' /usr/lib/os-release
