FROM python:3.10-alpine

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt usr/src/requirements.txt
RUN pip install -r usr/src/requirements.txt

# copy script and prepare it to run
COPY ./scripts/run_local.sh usr/src/scripts/run_local.sh
RUN sed -i 's/\r$//g' /usr/src/scripts/run_local.sh
RUN chmod +x /usr/src/scripts/run_local.sh

# copy project
COPY ./app /usr/src/app

# set work directory
WORKDIR /usr/src/app

# script that checks if db is up, flushes and migrates it
ENTRYPOINT [ "/usr/src/scripts/run_local.sh" ]




   