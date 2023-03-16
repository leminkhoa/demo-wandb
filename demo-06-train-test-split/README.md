# Instructions
In this exercise you will complete a MLflow component that divides the data into training and 
test sample.

## Steps

Complete the ``run.py`` script by adding the call to the ``train_test_split`` function 
from scikit-learn. Then, execute the script:
```bash
mlflow run . -P input_artifact="demo-05/preprocessed_data.csv:latest" \
             -P artifact_root="data" \
             -P test_size=0.3 \
             -P stratify="genre"
```
This command splits the dataset in train/test with the test accounting for 30% of the original
dataset. The split is stratified according to the target, to keep the same label balance.

Remember that you can reference artifacts from a different project by using a fully-qualified
artifact name prepending the project name. So if you saved the artifact from the previous exercise
(demo-05) into a project called ``demo-05``, you can reference that artifact as 
``demo-05/preprocessed_data.csv:latest``
