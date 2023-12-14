package com.codegym.demomvc1.model.dao.impl;

import com.codegym.demomvc1.model.dao.IProductDao;
import com.codegym.demomvc1.model.dao.MyConnection;
import com.codegym.demomvc1.model.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDao {
    private final String SELECT_ALL = "SELECT * FROM product";


    @Override
    public List<Product> findAll() {
        List<Product> productList = new ArrayList<>();
        Connection connection = MyConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                Long categoryId = resultSet.getLong("category_id");
                productList.add(new Product(id,name,categoryId));
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return productList;
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
