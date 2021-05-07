package com.example.webscraper.repositories;
import com.example.webscraper.model.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class JobRepository implements ICrudRepository<Job>{

    @Autowired
    JdbcTemplate template;

    @Override
    public void create(Job job) {
        String sql = "INSERT INTO jobs (title, url) VALUES (?, ?)";
        template.update(sql, job.getTitle(), job.getUrl());
    }

    @Override
    public Job read(int id) {
        String sql = "SELECT * FROM jobs WHERE id=?";
        RowMapper<Job> rowMapper = new BeanPropertyRowMapper<>(Job.class);
        return template. queryForObject(sql, rowMapper, id);
    }

    @Override
    public List<Job> readAll() {
        String sql = "SELECT * FROM jobs";
        RowMapper<Job> rowMapper = new BeanPropertyRowMapper<>(Job.class);
        return template.query(sql, rowMapper);
    }

    @Override
    public void deleteAll() {
        String sql = "DELETE * FROM jobs";
        template.update(sql);
    }
}
