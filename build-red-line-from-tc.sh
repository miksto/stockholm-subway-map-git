#!/usr/bin/env sh
set -x #echo on
set -e


# Build all red lines north from TC

git commit --allow-empty -m "Östermalmstorg"
git checkout red_line_t13
git reset --hard red_line_t14

git commit --allow-empty -m "Karlaplan"
git commit --allow-empty -m "Gärdet"
git commit --allow-empty -m "Ropsten"

git checkout red_line_t14
git commit --allow-empty -m "Stadion"
git commit --allow-empty -m "Tekniska högskolan"
git commit --allow-empty -m "Universitetet"
git commit --allow-empty -m "Bergshamra"
git commit --allow-empty -m "Danderyds sjukhus"
git commit --allow-empty -m "Mörby centrum"
