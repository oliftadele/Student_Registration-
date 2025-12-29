package servlet;

import util.DBConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String yearStr = request.getParameter("year");

        if (name == null || email == null || yearStr == null ||
                name.isEmpty() || email.isEmpty() || yearStr.isEmpty()) {
            response.sendRedirect("register.jsp?error=Invalid Input");
            return;
        }

        try {
            int year = Integer.parseInt(yearStr);
            Connection conn = DBConnection.getConnection();

            String sql = "INSERT INTO students (name, email, year) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setInt(3, year);

            ps.executeUpdate();
            conn.close();

            response.sendRedirect("show_all");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=Email Already Exists");
        }
    }
}
