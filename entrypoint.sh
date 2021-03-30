#!/bin/bash

if [ -z "$REBAR3_ARGS" ]; then
  echo "REBAR3_ARGS is not set"
  exit 1
fi
rebar3 $REBAR3_ARGS

# rename artifacts based on os version
if [ -z "$OS_VER" ]; then
  echo "OS_VER is not set"
  exit 1
fi

TARGZ=$(find _build -name *.tar.gz)

for f in $TARGZ; do
  newf=$(echo $f | sed -E "s/(.+)\.tar\.gz/\1-el$OS_VER.tar.gz/g")
  echo "Rename $f => $newf"
  mv $f $newf"
done
