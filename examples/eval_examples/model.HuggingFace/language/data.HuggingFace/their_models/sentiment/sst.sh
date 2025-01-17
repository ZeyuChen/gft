#!/bin/sh

echo hostname = `hostname`

for model in matches; 30 distilbert-base-uncased-finetuned-sst-2-english textattack/roberta-base-SST-2 textattack/bert-base-uncased-SST-2 kssteven/ibert-roberta-base sshleifer/tiny-distilbert-base-uncased-finetuned-sst-2-english barissayil/bert-sentiment-analysis-sst philschmid/MiniLM-L6-H384-uncased-sst2 echarlaix/bert-base-uncased-sst2-acc91.1-d37-hybrid howey/bert-base-uncased-sst2 Alireza1044/albert-base-v2-sst2 philschmid/Infinity_cpu_MiniLM_L6_H384_uncased_sst2 textattack/distilbert-base-uncased-SST-2 textattack/albert-base-v2-SST-2 jmamou/gpt2-medium-SST-2 mfuntowicz/bert-base-cased-finetuned-sst2 gchhablani/fnet-base-finetuned-sst2 textattack/facebook-bart-large-SST-2 yoshitomo-matsubara/bert-large-uncased-sst2 kssteven/ibert-roberta-large-mnli AdapterHub/roberta-base-pf-sst2 Bhumika/roberta-base-finetuned-sst2 assemblyai/distilbert-base-uncased-sst2 howey/roberta-large-sst2 textattack/distilbert-base-cased-SST-2 gchhablani/bert-base-cased-finetuned-sst2 M-FAC/bert-tiny-finetuned-sst2 LukasStankevicius/t5-base-lithuanian-news-summaries-175 textattack/xlnet-base-cased-SST-2 mrm8488/deberta-v3-small-finetuned-sst2 assemblyai/bert-large-uncased-sst2
	     do
gft_eval --model H:$model \
    --data H:sst \
    --eqn 'regress: label ~ sentence' \
    --split test
done



