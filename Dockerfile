# Base image
FROM openjdk:17-jdk-alpine

# working directory
WORKDIR /app

# Copy the code 

COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

RUN javac Main.java

#Expose the port 8000
EXPOSE 8000

# RUN java Main

# serve the app / keep it running 

CMD ["java","Main"]





