package com.codegym.demomvc1.model.dao;

import java.util.List;

public interface IUtilityDao<T> {
    List<T> findAll();

    T findById(Long id);

    boolean add(T t);

    boolean edit(T t);

    boolean remove(Long id);
}
