sudo update-java-alternatives -s java-1.7.0-openjdk-amd64

if [ ! -e ./repo_sync_omni ]; then
  echo "Repo sync script is not found"
  exit
fi

if [ ! -e ./start_build_omni ]; then
  echo "Start build script is not found"
  exit
fi

if [ ! -e ./make_changelog_omni ]; then
  echo "Make changelog script is not found"
  exit
fi

if [ ! -e ./update_web_twrp ]; then
  echo "Email script is not found"
  exit
fi

echo ""
echo "Syncing Repos."
echo ""
./repo_sync_omni
echo ""
echo "Creating Changelog."
echo ""
./make_changelog_omni
echo ""
echo "Building ROM."
echo ""
./start_build_omni
echo ""
echo "Sending email."
echo ""
./update_web_twrp
echo ""
