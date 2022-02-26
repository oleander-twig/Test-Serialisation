FROM python:3.8

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r Requirements.txt

# tell the port number the container should expose

# run the command
ENTRYPOINT ["python", "./serialisation.py"]
