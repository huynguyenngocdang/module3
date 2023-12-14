package com.codegym.demomvc1.model.service.impl;

import com.codegym.demomvc1.model.dao.IProductDao;
import com.codegym.demomvc1.model.dao.impl.ProductDao;
import com.codegym.demomvc1.model.entity.Product;
import com.codegym.demomvc1.model.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private final IProductDao productDao = new ProductDao();

    @Override
    public List<Product> findAll() {
        return productDao.findAll();
    }

    @Override
    public Product findById(Long id) {
        return null;
    }

    @Override
    public boolean add(Product product) {
        return false;
    }

    @Override
    public boolean edit(Product product) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
