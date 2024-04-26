# Dockerized DOSTAVKA App
This repository contains a Dockerized Django application. Follow the instructions below to set up and run the application using Docker.

### Prerequisites
Ensure that you have the following installed on your system:
- Docker
- Docker Compose

### Getting Started
- Clone the repository to your local machine:
```
git clone https://github.com/Evgenslam/django-dostavka.git
```
- Create a copy of the .env.example file and name it .env:
```
cp .env.example .env
```
- Update the .env file with your Django application setting.

### Running the Application
Makefile is created for convenience/
To run the Dockerized Django application, follow these steps:
- Build images and start containers with the followind code:
```
make build
make up
```

### Additional make commands
More commands are available with make.
Run make help for details.


