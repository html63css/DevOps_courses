#!/bin/bash

USER=${UID}
UID_ROOT=0

if [[ "${UID}" == "${UID_ROOT}" ]]
 then
  echo "ROOT"
 else
  echo "NO ROOT"
fi
