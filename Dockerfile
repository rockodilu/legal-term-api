# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install poetry
RUN pip install poetry

# Disable virtual env creation by poetry (not needed in Docker)
RUN poetry config virtualenvs.create false

# Install the dependencies using poetry
RUN poetry install --no-dev

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV UVICORN_HOST=0.0.0.0 UVICORN_PORT=8000

# Run the application
CMD ["uvicorn", "src.api:app", "--host", "0.0.0.0", "--port", "8000"]