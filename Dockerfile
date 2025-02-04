FROM alpine:latest

# Set a working directory
WORKDIR /app

#Install some dependencies 
RUN apk add --noi-cache curl

#Create a simple script
RUN echo 'echo "Hello from Docker!"'> run.sh && chmod +x run.sh'

#Set the script as the default command
CMD ["sh", "./run.sh"]