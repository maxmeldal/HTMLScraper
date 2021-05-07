package com.example.webscraper.controllers;

import com.example.webscraper.model.Job;
import com.example.webscraper.services.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RestfulJobController {

    @Autowired
    JobService jobService;

    @GetMapping("/job/{id}")
    public Job read (@PathVariable("id") int id){
        return jobService.read(id);
    }

    @GetMapping("/jobs")
    public List<Job> readAll(){
        return jobService.readAll();
    }

}
