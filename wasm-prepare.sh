make clean

# run ./configure --help to find out what each of these flags mean.
emconfigure ./configure \
  --disable-intrinsics \
  --disable-rtcd \
  --disable-shared \
  --enable-static \
  --disable-extra-programs \
  --disable-doc \
  CFLAGS="-O3"

emmake make clean

emmake make

# at this point, libopus.a should exist here
# ls -l .libs/libopus.a