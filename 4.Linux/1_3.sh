#!/bin/bash

(sleep 5;
if [ "$(ps -p $$ | wc -l)" == 2 ]
then
echo -e "\n5 seconds have passed. The program is disabled."
kill $$
fi)&
read -p "Input: " STR
echo "${STR}"
