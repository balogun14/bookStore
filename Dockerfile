#pull base image
FROM --platform=linux/amd64 python:3.11-slim-bullseye

#Set enviroment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#Set work directory
WORKDIR /code

#INSTALL DEPENDENCIES
COPY ./requirements.txt .
RUN pip install -r requirements.txt

#Copy project
COPY . .