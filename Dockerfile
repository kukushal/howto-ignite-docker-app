FROM java:8

EXPOSE 11211 47100 47500 49112

ENTRYPOINT ["java", "-cp", "howto-ignite-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar"]
CMD "howto.ignite.docker.app.App"