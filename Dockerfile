FROM python:3.10

WORKDIR /usr/detector_train_up
COPY ./ultralytics ultralytics
COPY ./train.py train.py
COPY ./val.py val.py
COPY ./custom.yaml custom.yaml
RUN apt-get update && apt-get install -y python3-opencv
RUN pip install ultralytics

CMD["python", "train.py"]