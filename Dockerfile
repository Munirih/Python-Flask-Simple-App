FROM alpine:latest

RUN apk add python3 && pip3 install --upgrade pip

WORKDIR /app 

COPY . /app

RUN pip3 install -r requirements.txt 

EXPOSE 5000

CMD ["python3", "app.py"]