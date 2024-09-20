FROM amazoncorretto:17-alpine-jdk
WORKDIR /app
ARG JAR_FILE=target/${IMAGE_NAME}-${BUILD_ID}.jar
ADD ${JAR_FILE} .
ENTRYPOINT ["java","-jar","ecomm-user-1.0.jar"]