#!/bin/bash
conda init

source ~/.bashrc

conda create -n demo-wandb python=3.9 --yes \
&& source activate demo-wandb \
&& pip install -r requirements.txt