sudo apt install libeigen3-dev
sudo apt install build-essential git g++ autotools-dev libgtkmm-3.0-dev libgtkmm-3.0-doc
sudo apt install libserial-dev

cd build
cmake ..
make -j8

sudo usermod -a -G dialout kella
sudo reboot
