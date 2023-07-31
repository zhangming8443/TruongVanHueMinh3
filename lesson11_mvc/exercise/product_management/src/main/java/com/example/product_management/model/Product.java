package com.example.product_management.model;

public class Product {
    private int id;
    private String name;
    private double price;
    private int amount;
    private String img;

    public Product() {
    }

    public Product(int id, String name, double price, int amount, String img) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.amount = amount;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
