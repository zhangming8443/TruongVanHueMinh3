package com.example.javawebcurrencyconverter;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ConverterServlet", value = "/convert")
public class ConverterServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Converter";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));
        float vnd = rate * usd;
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Rate" + rate + "</h1>");
        out.println("<h1>USD:" + usd + "</h1>");
        out.println("<h1>VND:" + vnd + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}