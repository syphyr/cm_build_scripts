echo "Syncing Repos."
./repo_sync
echo "Building ROM."
./start_build
echo "Creating Changelog."
./make_changelog
echo "Updating Web Server."
./update_web
echo "OTA Unit Test."
ota_unit_test
echo ""
echo "Done."

