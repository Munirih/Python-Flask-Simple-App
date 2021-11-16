FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install -y python3

RUN apt-get install -y python3-pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]