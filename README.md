[![CircleCI](https://app.circleci.com/settings/project/images/success-badge.svg)](https://app.circleci.com/settings/project/images/success-badge.svg)


## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash 
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

* Run `make install` to install the necessary dependencies
```bash 
cd project-ml-microservice-kubernetes
make install
``` 

* Run `make lint` to install the necessary dependencies
```bash 
make lint
``` 

### Running `app.py`

1. Standalone:  `python app.py`
```bash 
python3 app.py
``` 

2. Run in Docker (local):  `./run_docker.sh`
```bash 
chmod +x ./run_docker.sh
./run_docker.sh
docker logs -f 70077007/alx-ml-app:latest &> output_txt_files/docker_out.txt &
```

3. Test prediction (local):  `./run_docker.sh`
```bash 
chmod +x ./make_prediction.sh 
PORT=8000
./make_prediction.sh
``` 

4. Push Docker image:  `./upload_docker.sh`
```bash 
# edit docker_password.txt (set your docker hub password)
# edit upload_docker.sh (set your dockerHubImage, dockerHubLogin)
chmod +x ./upload_docker.sh
./upload_docker.sh
``` 

5. Run in Kubernetes:  `./run_kubernetes.sh`
```bash 
chmod +x ./run_kubernetes.sh
./run_kubernetes.sh 
``` 


6. Test prediction (after deploy):  `./run_kubernetes.sh`
```bash 
chmod +x ./make_prediction.sh 
PORT=31031
./make_prediction.sh
``` 