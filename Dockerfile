# Use a imagem base do OpenJDK 17
FROM openjdk:17-jdk

# Defina o diretório de trabalho para /app
WORKDIR /app

# Copie o arquivo JAR construído durante a compilação para o diretório /app no contêiner
COPY target/kubedock-0.0.1-SNAPSHOT.jar /app/kubedock.jar

# Defina o comando de inicialização do contêiner para executar o aplicativo JAR
CMD ["java", "-jar", "kubedock.jar"]
