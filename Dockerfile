FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt
RUN cd devops

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:5000"]




