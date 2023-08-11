#!/usr/bin/env sh
set -x #echo on
set -e

# Build all red lines up until Mariatorget

git checkout --orphan red_line_t13
git commit --allow-empty -m "Norsborg"
git commit --allow-empty -m "Hallunda"
git commit --allow-empty -m "Alby"
git commit --allow-empty -m "Fittja"
git commit --allow-empty -m "Masmo"
git commit --allow-empty -m "Vårby gård"
git commit --allow-empty -m "Vårberg"
git commit --allow-empty -m "Skärholmen"
git commit --allow-empty -m "Sätra"
git commit --allow-empty -m "Bredäng"
git commit --allow-empty -m "Mälarhöjden"
git commit --allow-empty -m "Axelsberg"
git commit --allow-empty -m "Örnsberg"
git commit --allow-empty -m "Aspudden"

git checkout --orphan red_line_t14
git commit --allow-empty -m "Fruängen"
git commit --allow-empty -m "Västertorp"
git commit --allow-empty -m "Hägerstensåsen"
git commit --allow-empty -m "Telefonplan"
git commit --allow-empty -m "Midsommarkransen"

git merge red_line_t13 --no-ff --allow-unrelated-histories --no-commit
git commit --allow-empty -m "Liljeholmen"

git commit --allow-empty -m "Hornstull"
git commit --allow-empty -m "Zinkensdamm"
git commit --allow-empty -m "Mariatorget"