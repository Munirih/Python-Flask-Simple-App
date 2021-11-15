FROM alpine:latest

RUN apk python3 && pip install --upgrade pip

WORKDIR /app 

COPY . /app

RUN pip install -r requirements.txt 

EXPOSE 5000

CMD ["python3", "app.py"]