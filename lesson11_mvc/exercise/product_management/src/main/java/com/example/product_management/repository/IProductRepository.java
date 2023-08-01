package com.example.product_management.repository;

import com.example.product_management.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();

    void saveProduct(Product product);

    Product findByName(String name);

    Product findByID(int id);

    void updateInfoProduct(int id, Product product);

    void removeProduct(int id);
}
