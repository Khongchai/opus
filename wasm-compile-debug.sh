emcc -O0 -g opus_encoder_extension.c .libs/libopus.a \
  -I include \
  -s MODULARIZE=1 -s EXPORT_NAME="createOpusModule" \
  -s EXPORTED_FUNCTIONS="['_opus_encoder_create', '_opus_encoder_destroy', '_opus_decoder_destroy', '_opus_encode_float', '_opus_decoder_create', '_opus_decode', '_malloc', '_free', '_opus_encoder_ctl', '_opus_decode_float', '_variation_opus_encoder_get_int', '_variation_opus_encoder_set_int', '_variation_opus_encoder_get_lookahead']" \
  -s EXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPF32,HEAPU8,HEAP16,HEAP32  \
  -o opus.js