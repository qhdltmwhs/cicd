# 1. OpenJDK 17 이미지를 베이스로 사용
FROM openjdk:17-jdk-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. JAR 파일을 컨테이너에 복사
COPY build/libs/*.jar app.jar

# 4. 컨테이너가 시작될 때 실행할 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
