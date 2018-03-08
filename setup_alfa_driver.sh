#(Optional) 
# Install Alfa Driver
git clone https://github.com/zebulon2/rtl8812au-driver-5.2.20.git rtl8812au
cd rtl8812au
make
sudo make install
sudo modprobe 8812au
cd ..
sudo rm -r rtl8812au
sudo update-initramfs -u
