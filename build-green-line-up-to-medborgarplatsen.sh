#!/usr/bin/env sh
set -x #echo on
set -e


git checkout --orphan green_line_t17

# Build all green lines up until Medborgarplatsen

git commit --allow-empty -m "Skarpnäck"
git commit --allow-empty -m "Bagarmossen"
git commit --allow-empty -m "Kärrtorp"
git commit --allow-empty -m "Björkhagen"
git commit --allow-empty -m "Hammarbyhöjden"

git checkout --orphan green_line_t18 
git commit --allow-empty -m "Farsta strand"
git commit --allow-empty -m "Farsta"
git commit --allow-empty -m "Hökarängen"
git commit --allow-empty -m "Gubbängen"
git commit --allow-empty -m "Tallkrogen"
git commit --allow-empty -m "Skogskyrkogården"
git commit --allow-empty -m "Sandsborg"
git commit --allow-empty -m "Blåsut"

git checkout --orphan green_line_t19 
git commit --allow-empty -m "Hagsätra"
git commit --allow-empty -m "Rågsved"
git commit --allow-empty -m "Högdalen"
git commit --allow-empty -m "Bandhagen"
git commit --allow-empty -m "Stureby"
git commit --allow-empty -m "Svedmyra"
git commit --allow-empty -m "Sockenplan"
git commit --allow-empty -m "Enskede gård"
git commit --allow-empty -m "Globen"

git checkout green_line_t17
git merge green_line_t18 --no-ff --allow-unrelated-histories --no-commit
git commit --allow-empty -m "Skärmarbrink"

git merge green_line_t19 --no-ff --allow-unrelated-histories --no-commit
git commit --allow-empty -m "Gullmarsplan"
git commit --allow-empty -m "Skanstull"
git commit --allow-empty -m "Medborgarplatsen"