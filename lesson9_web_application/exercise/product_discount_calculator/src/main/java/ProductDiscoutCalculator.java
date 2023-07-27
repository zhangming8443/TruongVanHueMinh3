import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscoutCalculator", value = "/display-discount")
public class ProductDiscoutCalculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));
        double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        String prdDescription = request.getParameter("prdDescription");
        double discountAmount = 0.01 * discountPercent * listPrice;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        writer.println("<h2>Product Description: " + prdDescription + "<h2>");
        writer.println("<h2>List Price: " + listPrice + "<h2>");
        writer.println("<h2>Discount Percent: " + discountPercent + "<h2>");
        writer.println("<h2>Discount Amount: " + discountAmount + "<h2>");
        writer.println("</body>");
        writer.println("</html>");



    }
}
