# TODO: should source target platform envsetup.sh
 export CC=${CROSS_COMPILE}gcc LD=${CROSS_COMPILE}ld CFLAGS=-muclibc

 EXT_FLAGS="--without-lzo --without-zstd --without-ubifs --disable-tests"
 
 EX_LDFLAGS="-L/home/pengfei/test/3-free_source/myzlib-1.3/__install/lib"
# ./configure --prefix=/home/pengfei/test/3-free_source/mtd-utils-2.1.6/__install CC=/home/pengfei/8416/ingenic_t40xp_normal/tools/toolchain/gcc_720/mips-gcc720-glibc229/bin/mips-linux-gnu-gcc --host=mips --without-lzo --without-zstd --without-ubifs LDFLAGS=-L/home/pengfei/test/3-free_source/myzlib-1.3/__install/lib --disable-tests
./configure --prefix=/home/pengfei/test/3-free_source/mtd-utils-2.1.6/__install CC=/home/pengfei/8416/ingenic_t40xp_normal/tools/toolchain/gcc_720/mips-gcc720-glibc229/bin/mips-linux-gnu-gcc --host=mips LDFLAGS=${EX_LDFLAGS} ${EXT_FLAGS}
make -j8
