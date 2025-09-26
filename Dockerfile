FROM python:3.9-slim-bullseye
WORKDIR /app
COPY . /app

RUN apt update -y && apt install -y awscli

RUN pip install -r requirements.txt
CMD ["python", "application.py"]