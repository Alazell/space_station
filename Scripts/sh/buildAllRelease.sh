#!/usr/bin/env sh

# make sure to start from script dir
if [ "$(dirname $0)" != "." ]; then
  cd "$(dirname $0)"
fi

cd ../../

python RUN_THIS.py
git submodule update --init --recursive
dotnet build -c Release
