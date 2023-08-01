package com.example.product_management.service;

import com.example.product_management.model.Product;
import com.example.product_management.repository.IProductRepository;
import com.example.product_management.repository.ProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void saveProduct(Product product) {
        productRepository.saveProduct(product);
    }

    @Override
    public Product findByName(String name) {
        return productRepository.findByName(name);
    }

    @Override
    public Product findByID(int id) {
        return productRepository.findByID(id);
    }

    @Override
    public void updateInfoProduct(int id, Product product) {
        productRepository.updateInfoProduct(id, product);
    }

    @Override
    public void removeProduct(int id) {
        productRepository.removeProduct(id);
    }
}
