# Jupyter-on-docker
dockerfile to run jupyter on docker container
Steps:

Commands buid and run
```sh
1. sudo docker build -f dockerfile -t notebook .
```
```sh
2. sudo docker run -v $(pwd)/:/all/ -p 8888:8888 -ti notebook
```
