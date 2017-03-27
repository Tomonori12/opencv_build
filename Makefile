opencv:
  echo "OpenCV from http://opencv.org/releases.html"

dependency:
  sudo apt-get install build-essential
  sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
  
dependency-option:
  sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

cv3.2.0:
  wget https://github.com/opencv/opencv/archive/3.2.0.zip
  unzip opencv-3.2.0.zip ~/

cv3.1.0:
  wget https://github.com/opencv/opencv/archive/3.1.0.zip
  unzip opencv-3.1.0.zip ~/


cmake3.2:
  cd ~/opencv-3.2.0
  mkdir build
  cd build
  cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..


cmake3.1:
  cd ~/opencv-3.1.0
  mkdir build
  cd build
  cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..


build:
  make -j

install:
  sudo make install
  
  
