#!/bin/bash

for i in a m; do
  tar cjf "$2/$i.tar.bz2" "../data/img/$i"
done
