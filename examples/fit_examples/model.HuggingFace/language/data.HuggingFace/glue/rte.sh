#!/bin/sh

echo hostname = `hostname`

gft_fit --model H:bert-base-cased \
    --data H:glue,rte \
    --metric H:glue,rte \
    --output_dir $1 \
    --eqn 'classify: label ~ sentence1 + sentence2' \
    --num_train_epochs 3

