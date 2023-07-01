FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3-dev python3-pip htop

COPY . all/

RUN /bin/bash -c "cd all \
    && pip3 install -r requirements.txt"

EXPOSE 8888 

CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
