# Use an official Python runtime as a parent image
FROM python:3.8-slim

ENV PYTHONUNBUFFERED True

# Set the working directory to /app
ENV APP_HOME /app
WORKDIR $APP_HOME

# Copy the current directory contents into the container at /app
COPY . ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run main.py when the container launches
ENTRYPOINT ["python", "main.py"]
