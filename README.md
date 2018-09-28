# docker-jupyterlab

### Overview

* This docker image is built upon [datascience-notebook](https://hub.docker.com/r/jupyter/datascience-notebook/). Read more about it [here](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook)

* Installed node.js runtime, npm(node package manager) and some commonly used node modules.
    * Node Modules:
        * redis
        * couchbase
        * lodash
        * moment

* Feel Free to fork this project and make changes as per your requirement such as addition/deletion of node_modules.


### Instructions to run this docker image:

#### Prerequisites
    1. docker
    2. highspeed internet connection to D/L all the dependent images :P

#### Clone this repo
    $ git clone git@github.com:naushadS/docker-jupyterlab.git
    $ cd docker-jupyterlab

#### Build a docker image from docker file:
    $ docker build my-jupyter-notebook:latest .
    =======================
    Args Positional Format:
    <desired_REPOSITORY_name>:<desired_TAG> <space> <folder_where_dockerfile_exists>

#### Run the docker image:
    $ docker run --rm -p 8888:8888 -e JUPYTER_LAB_ENABLE=yes -v "$PWD":/home/jovyan/work <docker_image_id>
    =============
    Args Meaning:
    --rm = remove the container on exit (ctrl-c)
    -p 8888:8888 = jupyterlab runs on port 8888 inside the container, we exposed this externally on port 8888.
    -e JUPYTER_LAB_ENABLE=yes = setting environment variable
    -v "$PWD":/home/jovyan/work = On container removal copy everything created/stored on jupyterlab (which exists on /home/jovyan/work inside the container) to the present_working_directory (directory from where you ran - docker run) of your local system.


