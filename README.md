# MLOps-PSET2

## Problem Statement:
Build an ML app with the following features in your code 
* Should have the template from cookie cutter https://drivendata.github.io/cookiecutter-data-science/
* Should have all the python files stored in proper directories  ( modularity )
* Should have DVC pipelines implemented into the work flow 
* Should have implemented the CI pipelines from cml, to compare the accuracies between the two commits
* Should have deployed the above code deployed to either AWS or AZURE

Note :
The ML model can be anything from a basic regression process to the advanced classification problem 

Submission :
Your github URL of the repo and the URL of your deployed website on AWS or Azure

Marking :
The scoring for this assignment will be based on how effective the design methodologies are followed ( for CI and CD ) as mentioned in lectures.


## Steps:
Step 1:
    Create Git repo
    create DagsHub repo: https://dagshub.com and connect to the github repo

Step 2:
    install DVC
    configure dvc:

        dvc init

        dvc remote add origin https://dagshub.com/anibhush/MLOps-PSET2.dvc
        dvc remote modify origin --local auth basic
        dvc remote modify origin --local user anibhush
        dvc remote modify origin --local password <DAGSHUB_TOKEN>

        dvc pull -r origin
        dvc add data/raw
        dvc push -r origin    
        
        
Step 3:

    install mlflow

    # add the following in the python code!
    mlflow.set_tracking_uri("https://dagshub.com/anibhush/MLOps-PSET2.mlflow")
    tracking_uri = mlflow.get_tracking_uri()
    print("Current tracking uri: {}".format(tracking_uri))

    export MLFLOW_TRACKING_USERNAME=anibhush
    export MLFLOW_TRACKING_PASSWORD=$DAGSHUB_TOKEN

