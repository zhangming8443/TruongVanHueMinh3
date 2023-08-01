package com.example.product_management.repository;

import com.example.product_management.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "Captain America", 500000, 33, "https://i.pinimg.com/1200x/17/a7/fd/17a7fde2f8f0bb405334246ef0ec6eaa.jpg"));
        productMap.put(2, new Product(2, "Iron Man", 30000, 40, "https://i.pinimg.com/564x/14/c7/2c/14c72ce84186246df41b9bf943932d1d.jpg"));
        productMap.put(3, new Product(3, "Thor", 13123, 44, "https://i.pinimg.com/236x/1a/cb/e4/1acbe473b13ac90412d72868fca4a910.jpg"));
        productMap.put(4, new Product(4, "Doctor Strange", 21313, 55, "https://i.pinimg.com/236x/8f/30/bd/8f30bd4b2a4ed309288d2ffb347a96aa.jpg"));
        productMap.put(5, new Product(5, "Hulk", 92193, 54, "https://i.pinimg.com/236x/0e/40/18/0e40184d4c70b2c679fa0c88b44909eb.jpg"));
        productMap.put(6, new Product(6, "Black Widow", 3214128, 66, "https://i.pinimg.com/236x/90/15/d9/9015d92696baf129a8b4d273625fbfdd.jpg"));
        productMap.put(7, new Product(7, "Deadpull", 231135, 56, "https://i.pinimg.com/236x/53/d9/98/53d998c29c52fda8e987f8d5c880e66d.jpg"));
        productMap.put(8, new Product(8, "Thanos", 230203, 76, "https://i.pinimg.com/236x/ad/9f/e1/ad9fe15dafd17c6541c341feae920e48.jpg"));
        productMap.put(9, new Product(9, "Nebula", 239194, 32, "https://i.pinimg.com/236x/a2/5e/46/a25e46c99742bbf78b66188950ef475d.jpg"));
        productMap.put(10, new Product(10, "Spider man", 5343000, 64, "https://i.pinimg.com/236x/e6/7b/73/e67b73c9d533b2ffbc2f145a3b2de730.jpg"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void saveProduct(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findByName(String name) {
        return productMap.get(name);
    }

    @Override
    public void updateInfoProduct(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void removeProduct(int id) {
        productMap.remove(id);
    }

    @Override
    public Product findByID(int id) {
        return productMap.get(id);
    }
}
