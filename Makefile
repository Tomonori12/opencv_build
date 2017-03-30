opencv:
	 echo "OpenCV from http://opencv.org/releases.html"

dependency:
	sudo apt-get install build-essential
	sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

dependency-option:
	sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

anaPy27:
	conda create -n py35 python=3.5 anaconda

anaPy35:
	conda create -n py35 python=3.5 anaconda

ana-path:
	echo "#-----------------------------------------------------------"   >> ~/.bashrc
	echo "# Added by Tomonori12 opencv_build"                             >> ~/.bashrc
	echo "#-----------------------------------------------------------"   >> ~/.bashrc
	echo "## version 2.7"                                                 >> ~/.bashrc
	echo "export PATH="/home/tomonori/anaconda3/envs/py27/bin:\$$PATH""   >> ~/.bashrc
	echo "## version 3.6"                                                 >> ~/.bashrc
	echo "export PATH="/home/tomonori/anaconda3/envs/py35/bin:\$$PATH""   >> ~/.bashrc
	
	
cv3.2.0:
	wget https://github.com/opencv/opencv/archive/3.2.0.zip
	unzip opencv-3.2.0.zip

cv3.1.0:
	wget https://github.com/opencv/opencv/archive/3.1.0.zip
	unzip opencv-3.1.0.zip

qt5:
	conda install -c dsdale24 qt5

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




