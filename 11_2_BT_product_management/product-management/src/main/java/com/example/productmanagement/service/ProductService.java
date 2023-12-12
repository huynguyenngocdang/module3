package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private static List<Product> products;
    private static int latestIndex;
    static {
        products = new ArrayList<>();
        products.add(new Product(1, "Product_A", 10, 100));
        products.add(new Product(2, "Product_B", 10, 100));
        products.add(new Product(3, "Product_C", 10, 100));
    }

    @Override
    public List<Product> findAllProduct(){
        return products;
    }

    @Override
    public void saveProduct(Product product){
        int index = product.getProductId() - 1;
        products.set(index, product);
    }

    @Override
    public Product findById(int id) {
        for (Product product: products
             ) {
            if(product.getProductId() == id) {
                return product;
            }
        }
        return  null;
    }
    @Override
    public int getNewId() {
        latestIndex = products.size() - 1;
        return ++latestIndex;
    }
    @Override
    public void update(int id, Product product) {
        products.set(id - 1, product);
    }
    @Override
    public void remove(int id) {
        products.remove(id - 1);
    }
}
