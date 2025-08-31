package com.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello() {
        String javaVersion = System.getProperty("java.version"); //pom.xmlで定義したプロパティを取得している
        return "Hello, World!" + javaVersion;
    }
}
