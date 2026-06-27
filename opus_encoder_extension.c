#include "opus.h"

int variation_opus_encoder_get_int(OpusEncoder *st, int request)
{
    opus_int32 value = 0;
    int err = opus_encoder_ctl(st, request, &value);
    if (err != OPUS_OK)
        return err;
    return value;
}

int variation_opus_encoder_set_int(OpusEncoder *st, int request, int value)
{
    return opus_encoder_ctl(st, request, value);
}

int variation_opus_encoder_get_lookahead(OpusEncoder *st)
{
    return variation_opus_encoder_get_int(st, OPUS_GET_LOOKAHEAD_REQUEST);
}
