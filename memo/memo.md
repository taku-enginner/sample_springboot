# 構成メモ
.
├── Dockerfile
├── compose.yml
├── memo
├── pom.xml
├── src
│   └── main
│       └── java
│           └── com
│               └── example
│                   ├── HelloController.java
│                   └── MyApplication.java
└── target
    ├── classes
    │   └── com
    │       └── example
    │           ├── HelloController.class
    │           └── MyApplication.class
    ├── generated-sources
    │   └── annotations
    └── maven-status
        └── maven-compiler-plugin
            └── compile
                └── default-compile
                    ├── createdFiles.lst
                    └── inputFiles.lst

- targetフォルダはMavenプロジェクトのビルド時に自動作成される出力用ディレクトリ。コンパイルされたクラスファイルや、JAR/WARなどの成果物、その他生成ファイルが保存される。mvn compileやmvn pachageを実行すると自動生成される。
