FROM java:8

WORKDIR /opt/howto-ignite-docker-app

ADD "howto-ignite-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar" /opt/howto-ignite-docker-app/
ADD "ignite.xml" /opt/howto-ignite-docker-app/

EXPOSE 11211 47100 47500 49112

ENTRYPOINT ["java", "-cp", "howto-ignite-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar"]
CMD ["howto.ignite.docker.app.App"]