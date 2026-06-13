emcc -Os .libs/libopus.a \
  -s WASM=1 \
  -s EXPORTED_FUNCTIONS="['_opus_encoder_create', '_opus_encoder_destroy', '_opus_decoder_destroy', '_opus_encode_float', '_opus_decoder_create', '_opus_decode', '_malloc', '_free', '_opus_encoder_ctl']" \
  -s EXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPF32,HEAPU8,HEAP16 \
  -o opus.js