FROM nvcr.io/nvidia/tensorflow:21.04-tf2-py3

RUN apt-get update && apt install libgl1-mesa-dev -y

WORKDIR /app

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD . .
