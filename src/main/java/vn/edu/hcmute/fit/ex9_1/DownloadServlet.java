package vn.edu.hcmute.fit.ex9_1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/download")
public class DownloadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String productCode = request.getParameter("productCode");

        // Xử lý logic tải về hoặc ghi log
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Cảm ơn " + name + " đã tải album " + productCode + "!</h2>");
        out.println("<p>Thông tin đã được gửi đến email: " + email + "</p>");
        out.println("</body></html>");
    }
}