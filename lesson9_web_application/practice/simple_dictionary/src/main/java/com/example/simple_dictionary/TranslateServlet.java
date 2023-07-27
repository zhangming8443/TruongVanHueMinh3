package com.example.simple_dictionary;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "TranslateServlet", value = "/translate")
public class TranslateServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("sorry", "Xin Lỗi");
        dictionary.put("what", "Cái gì");

        String search = request.getParameter("txtSearch");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        String result = dictionary.get(search);
        if (result != null){
            writer.println("Word: " + search);
            writer.println("Result: " + result);
        } else {
            writer.println("Not found");
        }
            writer.println("</body>");
        writer.println("</html>");
    }

    public void destroy() {
    }
}