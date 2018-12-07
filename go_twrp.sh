#!/bin/bash

sudo update-java-alternatives -s java-1.8.0-openjdk-amd64
java -version
javac -version

# Directory that contains CM build scripts
BUILD_SCRIPT_DIR=~/android

## END EDIT ##

cd $BUILD_SCRIPT_DIR

if [ ! -e ./repo_sync_twrp ]; then
  echo "Repo sync script is not found"
  exit
fi

if [ ! -e ./start_build_twrp ]; then
  echo "Start build script is not found"
  exit
fi

if [ ! -e ./make_changelog_twrp ]; then
  echo "Make changelog script is not found"
  exit
fi

if [ ! -e ./update_web_twrp ]; then
  echo "Email script is not found"
  exit
fi

echo ""
echo "Creating Changelog."
echo ""
./make_changelog_twrp
echo ""
echo "Building ROM."
echo ""
./start_build_twrp
echo ""
echo "Sending email."
echo ""
./update_web_twrp
echo ""
