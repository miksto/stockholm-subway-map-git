#!/usr/bin/env sh
set -x #echo on

git checkout main
git branch -D blue_line_t10_t11
git branch -D blue_line_t10
git branch -D blue_line_t11
git branch -D green_line_t17_t18_t19
git branch -D green_line_t17
git branch -D green_line_t18
git branch -D green_line_t19
git branch -D red_line_t13
git branch -D red_line_t14

set -e

./build-green-line-up-to-medborgarplatsen.sh
./build-red-line-up-to-mariatorget.sh

# Begin blue line
git checkout --orphan blue_line_t10
git commit --allow-empty -m "Kungsträdgården"

# Build slussen and gamla stan
git checkout red_line_t14
git merge green_line_t17 --no-ff --allow-unrelated-histories --no-commit
git commit --allow-empty -m "Slussen"
git commit --allow-empty -m "Gamla stan"

# Build TC
git checkout green_line_t17
git reset --hard blue_line_t10
git checkout blue_line_t10

git merge green_line_t17 red_line_t14 --no-ff --allow-unrelated-histories --no-commit
git commit --allow-empty -m "T-Centralen"
TC_COMMIT_HASH=$(git rev-parse HEAD)

# Build blue line station Rådhuset
git checkout blue_line_t10
git commit --allow-empty -m "Rådhuset"

# Build red line north from TC
git checkout red_line_t14
git reset --hard $TC_COMMIT_HASH
./build-red-line-from-tc.sh

# Build green line from TC to S:t Eriksplan
git checkout green_line_t17
git reset --hard $TC_COMMIT_HASH
git commit --allow-empty -m "Hötorget"
git commit --allow-empty -m "Rådmansgatan"
git commit --allow-empty -m "Odenplan"
git commit --allow-empty -m "S:t Eriksplan"

# Build Fridhemsplan
git merge blue_line_t10 --no-ff --allow-unrelated-histories --no-commit
git commit --allow-empty -m "Fridhemsplan"

# Build blue line north of Fridhemsplan
git checkout blue_line_t10
git reset --hard green_line_t17
./build-blue-line-from-fridhemsplan.sh

# Build green line north of Fridhemsplan
git checkout green_line_t17
./build-green-line-from-fridhemsplan.sh

git checkout green_line_t18
git reset --hard green_line_t17

git checkout green_line_t19
git reset --hard green_line_t17

git checkout main