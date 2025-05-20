package com.lms.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.lms.model.Order;
import com.lms.util.DBconnect;

public class OrderService {

	public static boolean insertOrder(String custId, String service, String weight, String orderDate, String deliveryDate) {
	    boolean isSuccess = false;

	    String sql = "INSERT INTO orders (custId,service, weight, orderDate, deliveryDate) VALUES (?, ?, ?, ?, ?)";
	    
	    try (Connection con = DBconnect.getConnection();
	         PreparedStatement preparedStatement = con.prepareStatement(sql)) {

	        // Set the parameters for the query
	        preparedStatement.setString(1, custId);
	        preparedStatement.setString(2, service);
	        preparedStatement.setString(3, weight);
	        preparedStatement.setString(4, orderDate);
	        preparedStatement.setString(5, deliveryDate);

	        // Execute the query
	        int rowsAffected = preparedStatement.executeUpdate();

	        // Check if insert was successful
	        if (rowsAffected > 0) {
	            isSuccess = true;
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return isSuccess;
	}


    public ArrayList<Order> getOrderDetails() {
        ArrayList<Order> ordRecSet = new ArrayList<Order>();
        try {
            Connection con = DBconnect.getConnection();
            Statement state = con.createStatement();
            String sql = "select * from orders";
            System.out.println("db orderes");
            ResultSet rs = state.executeQuery(sql);

            while (rs.next()) {
                Order ord = new Order();
                ord.setOrderId(rs.getInt(1));               
                ord.setWeight(rs.getDouble(2));
                ord.setOrderDate(rs.getString(3));
                ord.setDeliveryDate(rs.getString(4));
                ord.setCustId(rs.getInt(5));
                ord.setService(rs.getString(6));
                ordRecSet.add(ord);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ordRecSet;
    }

    public static boolean deleteOrder(Order order) {
        boolean rowDelete = false;
        try (Connection connection = DBconnect.getConnection();
             PreparedStatement preparedStatement = connection
                     .prepareStatement("DELETE FROM orders WHERE orderId=?");) {

            preparedStatement.setInt(1, order.getOrderId());
            String sql="set foreign_key_checks=0";
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.execute();
            
            rowDelete = preparedStatement.executeUpdate() > 0;
            preparedStatement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDelete;
    }


    public static boolean updateOrder(Order order) {
        boolean rowUpdate = false;
        

        try (Connection connection = DBconnect.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("UPDATE orders SET custId = ?, service = ?, weight = ?, orderDate = ?, deliveryDate = ? WHERE orderId = ?;");) {

            preparedStatement.setInt(1, order.getCustId());           
            preparedStatement.setString(2, order.getService()); 
            preparedStatement.setDouble(3, order.getWeight());            
            preparedStatement.setString(4, order.getOrderDate());
            System.out.println("sddsssdsds:" + order.getOrderDate() );
            preparedStatement.setString(5, order.getDeliveryDate());
            preparedStatement.setInt(6, order.getOrderId());
        
        

            rowUpdate = preparedStatement.executeUpdate() > 0;
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdate;
    }


    public static Order selectOrder(int orderId) {

        Order order = new Order();

        try (Connection connection = DBconnect.getConnection();
             PreparedStatement preparedStatement = connection
                     .prepareStatement("SELECT * FROM orders WHERE orderId = ?");) {

            preparedStatement.setInt(1, orderId);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
            		
                int orderid = resultSet.getInt("orderId");
                int custId = resultSet.getInt("custId");
                String service = resultSet.getString("service");
                double weight = resultSet.getDouble("weight");
                String orderDate = resultSet.getString("orderDate");
                String deliveryDate = resultSet.getString("deliveryDate");

                order = new Order(orderid, custId,service, weight, orderDate, deliveryDate);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return order;
    }
}