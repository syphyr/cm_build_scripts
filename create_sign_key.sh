subject='/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com'

if [ -e ~/.android-certs ]; then
  echo "Android Keys already detected. The keys directory (~/.android-certs) must be manually removed before new keys will be created. Exiting."
  exit
fi

mkdir ~/.android-certs

for x in releasekey platform shared media; do
	~/android/system/cm-14.1/development/tools/make_key ~/.android-certs/$x "$subject"; \
done
