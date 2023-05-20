#!/usr/bin/env bash

# Get the location where this script is running from
basedir="$(dirname ${0})"

# Go up one level to the root of the repo
cd "${basedir}/.."

# Get the latest content of the repo
git pull > /dev/null

# Grab the latest maven.rb from Homebrew and generate a new Formula/maven-noopenjdk.rb
fname="Formula/maven-noopenjdk.rb"
echo "Updating [${fname}]"
curl -s https://raw.githubusercontent.com/Homebrew/homebrew-core/master/Formula/maven.rb | perl -pe 's/class Maven < Formula/class MavenNoopenjdk < Formula/g; s/depends_on \"openjdk\"//g' | perl -0pe 's/bottle do.*?end//gms' > ${fname}

# Commit the change and push it to the remote repo
echo "Committing and pushing changes to remote repo"
git add . && git commit -m "Update maven-noopenjdk.rb using latest homebrew-core/master/Formula/maven.rb" > /dev/null && git push

