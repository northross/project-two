#!/bin/bash

curl "http://localhost:4741/vocabs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "vocab": {
      "word": "'"${WORD}"'",
      "definition": "'"${DEFINITION}"'",
      "sounds_like": "'"${SOUNDS_LIKE}"'",
      "synonyms": "'"${SYNONYMS}"'",
      "antonyms": "'"${ANTONYMS}"'",
      "sentence": "'"${SENTENCE}"'"
    }
  }'

echo
