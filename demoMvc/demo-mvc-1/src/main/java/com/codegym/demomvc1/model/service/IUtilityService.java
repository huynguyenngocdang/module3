package com.codegym.demomvc1.model.service;

import java.util.List;

public interface IUtilityService <T>{
    List<T> findAll();

    T findById(Long id);

    boolean add(T t);

    boolean edit(T t);

    boolean remove(Long id);
}
