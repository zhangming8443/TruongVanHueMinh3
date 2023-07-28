package com.example.display_customer_list;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        Customer customer1 = new Customer("Nguyễn Hồng Nguyên", "22/02/2000", "Đà Nẵng", "https://i.pinimg.com/1200x/14/c7/2c/14c72ce84186246df41b9bf943932d1d.jpg");
        Customer customer2 = new Customer("Nguyễn Đình Thôi", "22/03/2000", "Sài Gòn", "https://i.pinimg.com/1200x/17/a7/fd/17a7fde2f8f0bb405334246ef0ec6eaa.jpg");
        Customer customer3 = new Customer("Lê Công Hoàn Thiện", "22/04/2000", "Hà Nội", "https://i.pinimg.com/564x/b3/c6/3e/b3c63e962ff69ef4791aee942234393d.jpg");
        Customer customer4 = new Customer("Bùi Hữu Hải", "22/05/2000", "Huế", "https://i.pinimg.com/564x/1f/92/ad/1f92add3f6d16c59b0803dac9c5412e2.jpg");
        Customer customer5 = new Customer("Phan Quốc Sang", "22/06/2000", "Đà Lạt", "https://i.pinimg.com/564x/90/08/6c/90086c8ad1270bf7180809636a3ec2ce.jpg");
        customerList.add(customer1);
        customerList.add(customer2);
        customerList.add(customer3);
        customerList.add(customer4);
        customerList.add(customer5);
        request.setAttribute("customer", customerList);
        request.getRequestDispatcher("display-customer.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
