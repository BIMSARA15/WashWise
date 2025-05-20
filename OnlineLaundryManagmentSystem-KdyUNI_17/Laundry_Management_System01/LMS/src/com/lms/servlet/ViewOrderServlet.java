package com.lms.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lms.model.Order;
import com.lms.service.OrderService;

@WebServlet("/ViewOrderServlet")
public class ViewOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create an instance of OrderService to fetch the order details
        OrderService orderService = new OrderService();
        System.out.println("gettttt");
        
        // Retrieve the list of orders from the service
        ArrayList<Order> orderList = orderService.getOrderDetails();
        
        // Set the order list as a request attribute for the JSP to access
        request.setAttribute("orderList", orderList);

        // Forward the request to orderlist.jsp
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/orderlist.jsp");
        rd.forward(request, response);
    }
}