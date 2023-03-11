#!/bin/bash
wandb artifact put \
      --name exercise_4/genres_mod.parquet \
      --type raw_data \
      --description "A modified version of the songs dataset" genres_mod.parquet