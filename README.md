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
    dvc init
    configure dvc:
        dvc remote add origin https://dagshub.com/sashicds/MLOpsDagsHubDemo.dvc
        dvc remote modify origin --local auth basic
        dvc remote modify origin --local user sashicds
        dvc remote modify origin --local password $DAGSHUB_TOKEN

        dvc pull -r origin
        dvc add data/raw
        dvc push -r origin    
        
        
