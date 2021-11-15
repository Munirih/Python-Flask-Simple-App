FROM alpine:latest

RUN apk add --no-cache python3 && py3-pip 

WORKDIR /app 

COPY . /app

RUN pip3 install -r requirements.txt 

EXPOSE 5000

CMD ["python", "app.py"]