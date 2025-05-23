FROM python:3.13-alpine

# Set the working directory in the container
WORKDIR /app

# Install Python dependencies first
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Make port 8000 available to the world outside this container
EXPOSE 8000

RUN apk update
RUN apk upgrade
RUN apk add --no-cache ffmpeg


COPY . .
# Ensure entrypoint script is executable
RUN chmod +x /entrypoint.sh

# Run entrypoint script
ENTRYPOINT ["./entrypoint.sh"]