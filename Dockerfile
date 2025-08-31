# ベースイメージとして軽量なOpenJDKイメージを使用
FROM openjdk:17-jdk-slim

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    curl  # ファイルのダウンロードに使用

# Mavenのインストール
ARG MAVEN_VERSION=3.9.5
ARG BASE_URL=https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries
ARG FILENAME=apache-maven-${MAVEN_VERSION}-bin.tar.gz

WORKDIR /tmp
RUN curl -fsSL ${BASE_URL}/${FILENAME} -o ${FILENAME} \
    && tar -zxf ${FILENAME} -C /opt/ \
    && rm ${FILENAME}

ENV PATH="/opt/apache-maven-${MAVEN_VERSION}/bin:${PATH}"

# コンテナ内の作業ディレクトリを指定
WORKDIR /app

# ポートの公開（SpringBootのデフォルトポート）
EXPOSE 8080

# コンテナ起動時に実行されるコマンド
# このコマンドはdocker-compose.ymlで上書きされる
CMD ["/bin/bash"]
