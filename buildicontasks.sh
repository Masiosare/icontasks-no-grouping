rm -R kdeplasma*
apt-get source kdeplasma-addons
cd kdeplasma-addons-*
cd applets/icontasks
patch -p0 < ../../icons.patch
cd ..
cd ..
mkdir build
cd build
cmake ..
make -j4
sudo cp lib/plasma_applet_icontasks.so /usr/lib/kde4/plasma_applet_icontasks.so
