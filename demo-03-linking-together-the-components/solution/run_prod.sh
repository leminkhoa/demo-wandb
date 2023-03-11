#!/bin/bash
mlflow run . -P hydra_options="main.experiment_name=prod"
