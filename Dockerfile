FROM python:3.10-alpine

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./scripts/run_local.sh ./scripts/run_local.sh
RUN sed -i 's/\r$//g' /usr/src/app/scripts/run_local.sh
RUN chmod +x /usr/src/app/scripts/run_local.sh

# copy project
COPY ./app ./app

ENTRYPOINT [ "/usr/src/app/scripts/run_local.sh" ]




   