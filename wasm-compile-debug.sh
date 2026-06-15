emcc -O0 .libs/libopus.a \
  -s MODULARIZE=1 -s EXPORT_NAME="createOpusModule" \
  -s EXPORTED_FUNCTIONS="['_opus_encoder_create', '_opus_encoder_destroy', '_opus_decoder_destroy', '_opus_encode_float', '_opus_decoder_create', '_opus_decode', '_malloc', '_free', '_opus_encoder_ctl', '_opus_decode_float']" \
  -s EXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPF32,HEAPU8,HEAP16,HEAP32  \
  -o opus.js