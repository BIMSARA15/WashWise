package com.lms.model;

public class Order {

    private int orderId;
    private int custId;
    private String service;
    private double weight;
    private String orderDate;
    private String deliveryDate;

    public Order() {
    }

    public Order(int orderId, int custId,String service, double weight, String orderDate, String deliveryDate) {
        super();
        this.orderId = orderId;
        this.custId = custId;
        this.service = service;
        this.weight = weight;
        this.orderDate = orderDate;
        this.deliveryDate = deliveryDate;
    }

    public Order(int orderId) {
        super();
        this.orderId = orderId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustId() {
        return custId;
    }

    public void setCustId(int custId) {
        this.custId = custId;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }
    
    
    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }
    
}
