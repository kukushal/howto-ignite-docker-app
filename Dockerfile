# This image is based on Java 8
FROM java:8

# Any directory you want to put the application inside the container
WORKDIR /opt/howto-ignite-docker-app

# Add or download all the application files and dependencies. This application has Ignite dependencies ignite-spring
# and ignite-core inside the application JAR. If you do not embed Ignite dependencies into JAR then you have to add
# the Ignite dependencies here.
ADD "howto-ignite-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar" /opt/howto-ignite-docker-app/
ADD "ignite.xml" /opt/howto-ignite-docker-app/

# Ignite requries these ports reserved on the host
EXPOSE 11211 47100 47500 49112

# Start the app
ENTRYPOINT ["java", "-cp", "howto-ignite-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar"]
CMD ["howto.ignite.docker.app.App"]