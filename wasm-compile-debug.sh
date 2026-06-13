emcc -Os .libs/libopus.a \
  -s WASM=1 \
  -s EXPORTED_FUNCTIONS="['_opus_encoder_create', '_opus_encode', '_opus_decoder_create', '_opus_decode', '_malloc', '_free']" \
  -s EXPORTED_RUNTIME_METHODS="['ccall', 'cwrap']" \
  -o opus.js