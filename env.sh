module load FFTW/3.3.8-gompic-2020b
module load LibTIFF/4.1.0-GCCcore-10.2.0
module load SQLite/3.33.0-GCCcore-10.2.0
module load GEOS/3.8.0-GCC-8.3.0-Python-3.7.4
module load R/4.0.3-foss-2020b
export SOURCES=$HOME/sources
export PREFIX=$HOME/built
export PATH=$PREFIX/bin:$PATH
export PKG_CONFIG_PATH=$PREFIX/lib64/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$PREFIX/lib:$PREFIX/lib64:$LD_LIBRARY_PATH
export PKG_CPPFLAGS="-I $PREFIX/include"
export CPPFLAGS=-I$PREFIX/include
export CFLAGS=-I$PREFIX/include
export CXXFLAGS=-I$PREFIX/include
export LDFLAGS32="-L$PREFIX/lib -Wl,-R$PREFIX/lib"
export LDFLAGS64="-L$PREFIX/lib64 -Wl,-R$PREFIX/lib64"
export LDFLAGS="$LDFLAGS32 $LDFLAGS64"
export ACLOCAL="aclocal -I $PREFIX/share/aclocal"
