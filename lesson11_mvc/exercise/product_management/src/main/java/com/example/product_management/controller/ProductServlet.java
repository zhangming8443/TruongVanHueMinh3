package com.example.product_management.controller;

import com.example.product_management.model.Product;
import com.example.product_management.service.IProductService;
import com.example.product_management.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private final IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewProduct(request, response);
                break;
            default:
                productList(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createNewProduct(request, response);
                break;
            case "edit":
                editProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                break;
        }
    }

    private void productList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = this.productService.findAll();
        request.setAttribute("products", productList);
        request.getRequestDispatcher("product/list.jsp").forward(request, response);
    }

    private void createNewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        String img = request.getParameter("img");
        int id = (int) (Math.random() * 1000);

        Product product = new Product(id, name, price, amount, img);
        this.productService.saveProduct(product);
        request.setAttribute("message", "New product was created");
        request.getRequestDispatcher("product/create.jsp").forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("product/create.jsp").forward(request, response);
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        String img = request.getParameter("img");
        Product product = this.productService.findByID(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            product.setName(name);
            product.setPrice(price);
            product.setAmount(amount);
            product.setImg(img);
            this.productService.updateInfoProduct(id, product);
            request.setAttribute("product", product);
            request.setAttribute("message", "Product information was updated");
            request.getRequestDispatcher("/product/edit.jsp").forward(request, response);
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findByID(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("products", product);
            request.getRequestDispatcher("product/edit.jsp").forward(request, response);
        }
    }


    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findByID(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            this.productService.removeProduct(id);
            response.sendRedirect("product");
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findByID(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("products", product);
            request.getRequestDispatcher("product/delete.jsp").forward(request, response);
        }
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findByID(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("products", product);
            request.getRequestDispatcher("product/view.jsp").forward(request, response);
        }
    }
}
