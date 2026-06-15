# Debug variant of wasm-prepare.sh.
#
# Builds libopus.a UNoptimized and WITH DWARF debug info (CFLAGS="-O0 -g") so the
# Opus C sources (opus_decoder.c, opus_demo.c, ...) are steppable in Chrome
# DevTools — install the "C/C++ DevTools Support (DWARF)" extension.
#
# This is only half of a debug build: pair it with ./wasm-compile-debug.sh, which
# links the .a with `emcc -O0 -g`. Both phases must be debug — linking a -O3 .a
# with `emcc -g` gives you nothing to step through.
#
# For production use wasm-prepare.sh (CFLAGS="-O3") + wasm-compile.sh instead.
make clean

# run ./configure --help to find out what each of these flags mean.
emconfigure ./configure \
  --disable-intrinsics \
  --disable-rtcd \
  --disable-shared \
  --enable-static \
  --disable-extra-programs \
  --disable-doc \
  CFLAGS="-O0 -g"

emmake make clean

emmake make

# at this point, a debug-info libopus.a should exist here
# ls -l .libs/libopus.a
