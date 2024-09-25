#!/bin/sh

CURRENT_TIME=$(date +%s%3N)

# check if metadata is not empty
if [ -n "$METADATA" ]; then
  echo "$METADATA" | jq empty
  # check if jq failed to parse metadata
  if [ $? -ne 0 ]; then
    echo "Error: Failed to parse metadata"
    exit 1
  else
    METADATA=$(echo "${METADATA}" | jq -c .)
  fi
fi
# Create a marker
curl -L -X POST 'https://api.logz.io/v2/markers/create-markers' \
-H "Content-Type: application/jso" \
-H "X-API-TOKEN: ${API_TOKEN}}" \
--data-raw "{
  \"markers\": [
    {
      \"title\": \"${TITLE}\",
      \"ta\": \"${TAG}\",
      \"timestamp\": ${CURRENT_TIME},
      \"description\": \"${DESCRIPTION}\",
      \"metadata\": ${METADATA}
    }
  ]
}"