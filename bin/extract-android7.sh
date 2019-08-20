mkdir -p ./resources
unzip -o $1 system.transfer.list system.new.dat -d resources
cd resources
sdat2img.py system.transfer.list system.new.dat my_new_system.ext4
mkdir tempdir
sudo mount -o loop my_new_system.ext4 tempdir

