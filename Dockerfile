FROM python:3.7
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE $port
CMD gunicorn --bind 0.0.0.0:$port app:app