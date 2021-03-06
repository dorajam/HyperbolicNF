#!/usr/bin/env bash

set -x

echo "Getting into the script"
echo "Running euclidean VAE with RealNVP flow for MNIST"

counter=1
while [ $counter -le 10 ]
do
python main.py --dataset='prufer' --model='euclidean' --z_dim=2 --wandb --lr=1e-2 --deterministic=True --decoder='distance' --epochs=150 --batch_size=20 --namestr="New3-euclidean-2-det-RealNVP" --n_blocks=2 --conv_type='GAT' --flow_layer_type='GAT' --load_gae=False --use_rand_feats=False --flow_model='RealNVP' --flow_hidden_size=32 --flow_epochs=100
((counter++))
done
