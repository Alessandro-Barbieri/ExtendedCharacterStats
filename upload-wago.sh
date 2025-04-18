#!/bin/sh

LATEST_GIT_TAG="$1"
CHANGELOG=$(jq --slurp --raw-input '.' < "CHANGELOG.md")

### WAGO Upload
# Docs: https://docs.wago.io/#introduction

WAGO_METADATA=$(cat <<-EOF
{
   "label": "$LATEST_GIT_TAG",
   "stability": "stable",
   "changelog": $CHANGELOG,
   "supported_wotlk_patch": "3.4.4",
   "supported_classic_patch": "1.15.7"
}
EOF
)

response=$(curl -sS \
    -o response.txt \
    -w "%{http_code}" \
    -H "authorization: Bearer $WAGO_API_TOKEN" \
    -H "accept: application/json" \
    -F "metadata=$WAGO_METADATA" \
    -F "file=@releases/$LATEST_GIT_TAG/ExtendedCharacterStats-$LATEST_GIT_TAG.zip" \
    "https://addons.wago.io/api/projects/e56nwDK9/version")

http_status=$(echo "$response" | tail -n1)

if [ "$http_status" -eq 201 ]; then
  echo "Wago upload successful"
else
  echo "Wago upload failed, HTTP-code: $http_status"
  cat response.txt
  exit 1
fi
