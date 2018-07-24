#!/bin/bash

if [ ! -f /run/secrets/dhparam-test.pem ]; then
  echo -e "not present !!"
fi
