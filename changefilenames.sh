#!/bin/bash

cd ./localfiles/

for f in *; do
  new="${f//(/-}"
  new="${new//)/-}"
  if [[ "$f" != "$new" ]]; then
    mv -- "$f" "$new"
  fi
done
