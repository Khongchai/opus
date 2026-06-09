emcc -O3 -DHAVE_CONFIG_H \
  -I . \
  -I include \
  -I celt \
  -I silk \
  -I silk/float \
  src/opus.c src/opus_encoder.c src/opus_decoder.c src/opus_multistream.c src/opus_multistream_encoder.c src/opus_multistream_decoder.c \
  celt/*.c \
  silk/*.c \
  silk/float/*.c \
  -s MODULARIZE=1 -s EXPORT_NAME="createOpusModule" \
  -o opus.js \
  -s EXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPF32,HEAPU8,HEAP16 \
  -s "EXPORTED_FUNCTIONS=[ \
    '_opus_encoder_get_size', \
    '_opus_encoder_init', \
    '_opus_encode', \
    '_opus_decoder_get_size', \
    '_opus_decoder_init', \
    '_opus_decode', \
    '_malloc', \
    '_free' \
  ]"