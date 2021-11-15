FROM alpine:latest

RUN apk add python3 

RUN apk add py3-pip

WORKDIR /app 

COPY . /app

RUN pip3 install -r requirements.txt 

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]