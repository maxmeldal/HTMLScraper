package com.example.webscraper.repositories;

import java.util.List;

public interface ICrudRepository<T> {

    void create (T t);
    T read(int id);
    List<T> readAll();
    void deleteAll();

}
