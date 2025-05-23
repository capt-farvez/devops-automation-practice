FROM python:3.13-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

RUN apk update
RUN apk upgrade
RUN apk add --no-cache ffmpeg

# Install Python dependencies first
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Ensure entrypoint script is executable
RUN chmod +x ./entrypoint.sh

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run entrypoint script
ENTRYPOINT ["./entrypoint.sh"]