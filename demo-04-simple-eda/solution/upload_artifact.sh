#!/bin/bash
wandb artifact put \
      --name demo-04/genres_mod.parquet \
      --type raw_data \
      --description "A modified version of the songs dataset" genres_mod.parquet