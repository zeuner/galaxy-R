mkdir -p $SOURCES
cd $SOURCES
wget http://ftp.wayne.edu/gnu/help2man/help2man-1.48.2.tar.xz
xzcat help2man-1.48.2.tar.xz | tar x
cd help2man-1.48.2
./configure --prefix=$PREFIX
make -j5
make -j5 install
cd ..
git clone git://git.savannah.gnu.org/libtool.git 
cd libtool
sh bootstrap
./configure --prefix=$PREFIX
make -j5
make -j5 install
cd ..
git clone https://github.com/OSGeo/proj
cd proj
autoreconf -fiv
./configure --prefix=$PREFIX
make -j5
make -j5 install
cd ..
git clone https://github.com/OSGeo/gdal
cd gdal/gdal
./configure --prefix=$PREFIX
make -j5
make -j5 install
cd ../..
git clone https://github.com/Kitware/CMake
cd CMake
./configure --prefix=$PREFIX
make -j5
make -j5 install
cd ..
git clone https://github.com/uclouvain/openjpeg
cd openjpeg
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make -j5
make -j5 install
cd ../..
git clone https://github.com/freedesktop/poppler
cd poppler
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make -j5
make -j5 install
