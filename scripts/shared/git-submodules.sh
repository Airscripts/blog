#!/bin/sh
if [ ! "$1" = "compose" ]; then
  git submodule update --init --recursive
fi