package com.example.webscraper;

import com.example.webscraper.model.Job;
import com.example.webscraper.services.JobService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WebscraperApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebscraperApplication.class, args);
    }
}
