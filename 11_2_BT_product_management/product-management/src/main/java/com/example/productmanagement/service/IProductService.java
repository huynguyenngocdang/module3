package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAllProduct();

    void saveProduct(Product product);

    Product findById(int id);

    int getNewId();

    void update(int id, Product product);

    void remove(int id);
}
