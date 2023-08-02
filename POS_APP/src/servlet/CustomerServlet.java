package servlet;

import dto.CustomerDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
@WebServlet (urlPatterns = "/pages/customer")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/posapi", "root", "1234");
            PreparedStatement pstm = connection.prepareStatement("select * from Customer");
            ResultSet rst = pstm.executeQuery();

            ArrayList<CustomerDTO> allCustomers = new ArrayList<>();

            while (rst.next()) {
                String id = rst.getString(1);
                String name = rst.getString(2);
                String address = rst.getString(3);
                String salary = rst.getString(4);
                allCustomers.add(new CustomerDTO(id, name, address, salary));

            }
            req.setAttribute("keyOne", allCustomers);
            req.getRequestDispatcher("Customer.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cusID = req.getParameter("cusID");
        String cusName = req.getParameter("cusName");
        String cusAddress = req.getParameter("cusAddress");
        String cusSalary = req.getParameter("cusSalary");
        String option = req.getParameter("option");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/posapi", "root", "1234");


            switch (option) {
                case "add":
                    PreparedStatement pstm = connection.prepareStatement("insert into Customer values(?,?,?,?)");
                    pstm.setObject(1, cusID);
                    pstm.setObject(2, cusName);
                    pstm.setObject(3, cusAddress);
                    pstm.setObject(4, cusSalary);
                    if (pstm.executeUpdate() > 0) {
                        resp.getWriter().println("Customer Added..!");
                        resp.sendRedirect("customer");
                    }
                    break;
                case "update":
                    PreparedStatement pstmUpdate = connection.prepareStatement("update Customer set cusName=?, cusAddress=?, cusSalary=? where cusID=?");
                    pstmUpdate.setObject(1, cusName);
                    pstmUpdate.setObject(2, cusAddress);
                    pstmUpdate.setObject(3, cusSalary);
                    pstmUpdate.setObject(4, cusID);
                    if (pstmUpdate.executeUpdate() > 0) {
                        resp.getWriter().println("Customer Updated..!");
                        resp.sendRedirect("customer");
                    }
                    break;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}