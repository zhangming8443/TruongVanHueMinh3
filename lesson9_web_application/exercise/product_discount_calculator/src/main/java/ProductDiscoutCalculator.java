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
        request.setAttribute("discountPercent", discountAmount);
        request.setAttribute("listPrice", listPrice);
        request.setAttribute("prdDescription", prdDescription);
        request.setAttribute("discountAmount", discountAmount);
        request.getRequestDispatcher("display-discount.jsp").forward(request, response);
    }
}
