#!/bin/sh

task=imdb

model=$gft_checkpoints/fit_examples/model.HuggingFace/language/data.HuggingFace/sentiment/$task/ckpt/best
gft_predict --model $model --data H:$task --eqn 'classify: label ~ text' --split test >$model/predict.out  2>$model/predict.err

