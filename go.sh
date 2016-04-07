cd ~/android
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
echo ""
echo "OTA Unit Test."
echo ""
ota_unit_test
echo ""
echo "Done."
echo ""

