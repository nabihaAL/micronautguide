# generated and modified from ./gradlew dockerFile
# root Dockerfile must be removed for ./gradlew dockerFile to work
FROM nabnob/kotlin-base-image

WORKDIR /home/app
COPY build/docker/main/layers/libs /home/app/libs
COPY build/docker/main/layers/resources /home/app/resources
COPY build/docker/main/layers/application.jar /home/app/application.jar

# app startup script
COPY start.sh /home/app/

# app port, ssh port, and debug port respectively
EXPOSE 8080 2222 5005
# no entry point because it gets defined as azure startup-command
ENTRYPOINT []

