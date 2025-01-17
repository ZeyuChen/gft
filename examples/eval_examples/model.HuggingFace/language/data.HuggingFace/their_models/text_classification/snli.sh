#!/bin/sh

echo hostname = `hostname`

# for model in cross-encoder/nli-distilroberta-base ynie/roberta-large-snli_mnli_fever_anli_R1_R2_R3-nli cross-encoder/nli-MiniLM2-L6-H768 cross-encoder/nli-roberta-base cross-encoder/nli-deberta-base cross-encoder/nli-deberta-v3-large cross-encoder/nli-deberta-v3-base cross-encoder/nli-deberta-v3-small cross-encoder/nli-deberta-v3-xsmall usc-isi/sbert-roberta-large-anli-mnli-snli AdapterHub/roberta-base-pf-snli persiannlp/mt5-base-parsinlu-snli-entailment lighteternal/nli-xlm-r-greek AdapterHub/bert-base-uncased-pf-snli persiannlp/mt5-small-parsinlu-snli-entailment persiannlp/mt5-large-parsinlu-snli-entailment 

for model in ynie/roberta-large-snli_mnli_fever_anli_R1_R2_R3-nli 
do
gft_eval --model H:$model \
    --base_model H:roberta-large \
    --data H:snli \
    --eqn 'classify: label ~ premise + hypothesis' \
    --split test
done


# for model in AdapterHub/roberta-base-pf-snli
# do
# gft_eval --model H:$model \
#     --base_model H:roberta-base \
#     --data H:snli \
#     --eqn 'classify: label ~ premise + hypothesis' \
#     --split test
# done

    
# for model in  AdapterHub/bert-base-uncased-pf-snli
# 	      do
# gft_eval --model H:$model \
#     --base_model H:bert-base-uncased \
#     --data H:snli \
#     --eqn 'classify: label ~ premise + hypothesis' \
#     --split test
# done
