if [ ! -e ./repo_sync ]; then
  echo "Repo sync script is not found"
  exit
fi

if [ ! -e ./start_build ]; then
  echo "Start build script is not found"
  exit
fi

if [ ! -e ./make_changelog ]; then
  echo "Make changelog script is not found"
  exit
fi

if [ ! -e ./update_web ]; then
  echo "Update web script is not found"
  exit
fi

echo "Syncing Repos."
echo ""
./repo_sync
echo ""
echo "Building ROM."
echo ""
./start_build
echo ""
echo "Creating Changelog."
echo ""
./make_changelog
echo ""
echo "Updating Web Server."
echo ""
./update_web

