package com.example.webscraper.services;
import com.example.webscraper.model.Job;
import com.example.webscraper.repositories.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    JobRepository jobRepository;

    public void create(Job job){
        jobRepository.create(job);
    }

    public Job read (int id){
        return jobRepository.read(id);
    }

    public List<Job> readAll(){
        return jobRepository.readAll();
    }

    public void deleteAll(){
        jobRepository.deleteAll();
    }

}
