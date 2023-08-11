#!/usr/bin/env sh
set -x #echo on
set -e

git commit --allow-empty -m "Stadshagen"
git commit --allow-empty -m "Västra skogen"

git checkout -b blue_line_t11

# Build t11 to Akalla
git commit --allow-empty -m "Solna centrum"
git commit --allow-empty -m "Näckrosen"
git commit --allow-empty -m "Hallonbergen"
git commit --allow-empty -m "Kista"
git commit --allow-empty -m "Husby"
git commit --allow-empty -m "Akalla"

# Build t10 to Hjulsta
git checkout blue_line_t10
git commit --allow-empty -m "Huvudsta"
git commit --allow-empty -m "Solna strand"
git commit --allow-empty -m "Sundbybergs centrum"
git commit --allow-empty -m "Duvbo"
git commit --allow-empty -m "Rissne"
git commit --allow-empty -m "Tensta"
git commit --allow-empty -m "Hjulsta"
