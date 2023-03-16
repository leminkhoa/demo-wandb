mlflow run . \
    -P input_artifact=demo-04/genres_mod.parquet:latest \
    -P artifact_name="preprocessed_data.csv" \
    -P artifact_type="clean_data" \
    -P artifact_description="Preprocessed data after drop duplicates and fill missing values"