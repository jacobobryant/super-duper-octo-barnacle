#!/bin/bash
# Taken from https://cljdoc.org/d/cljdoc/cljdoc/0.0.1315-c9e9a7e/doc/running-cljdoc-locally
set -e
set -x

git clone https://github.com/cljdoc/cljdoc.git
cd cljdoc/

npm ci                 # reproducibly install packages into node_modules
npm run format         # format JS code with Prettier
npm run build          # production build

test -d resources-compiled
