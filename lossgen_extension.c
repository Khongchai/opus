#include <stdlib.h>
#include "lossgen.h"

LossGenState *variation_lossgen_create(void)
{
    LossGenState *st = malloc(sizeof(LossGenState));
    if (!st)
        return NULL;
    lossgen_init(st);
    return st;
}

int variation_lossgen_sample(LossGenState *st, float loss_ratio)
{
    return sample_loss(st, loss_ratio);
}

void variation_lossgen_destroy(LossGenState *st)
{
    free(st);
}

void variation_lossgen_seed(unsigned int seed)
{
    srand(seed);
}
