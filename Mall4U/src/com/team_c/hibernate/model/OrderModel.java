package com.team_c.hibernate.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class OrderModel implements Serializable {

	public OrderModel(){}


	private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "product_name")
    private String product_name;
    
    @Column(name = "price")
    private String price;
    
    @Column(name = "customer_name")
    private String customer_name;
    
    @Column(name = "customer_id")
    private int customer_id;
    
    @Column(name = "product_id")
    private int product_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public OrderModel(int id, String product_name, String price, String customer_name, int customer_id,
			int product_id) {
		super();
		this.id = id;
		this.product_name = product_name;
		this.price = price;
		this.customer_name = customer_name;
		this.customer_id = customer_id;
		this.product_id = product_id;
	}

	
    
}