#parenet python for the image
FROM python:3.8-slim
# set the working dir in the container
WORKDIR /app
#copy the currebt dir into the container at /app
COPY . /app
#install any needed package specified in requirnments.txt
RUN pip install --no-cache-dir-r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py
#run flask app
CMD ["flask", "run", "--host=0.0.0.0"]
