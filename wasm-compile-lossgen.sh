emcc -O3 lossgen_extension.c dnn/lossgen.c dnn/lossgen_data.c \
  -I include -I celt -I dnn -I . -DHAVE_CONFIG_H \
  -s MODULARIZE=1 -s EXPORT_NAME="createLossGenModule" \
  -s EXPORTED_FUNCTIONS="['_variation_lossgen_create', '_variation_lossgen_sample', '_variation_lossgen_destroy', '_variation_lossgen_seed', '_malloc', '_free']" \
  -s EXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPF32,HEAPU8,HEAP16,HEAP32 \
  -o lossgen.js
