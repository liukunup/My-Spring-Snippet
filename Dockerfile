# 基础镜像
FROM openjdk:17-jre-slim

# 作者信息
LABEL authors="liukunup@outlook.com"

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
