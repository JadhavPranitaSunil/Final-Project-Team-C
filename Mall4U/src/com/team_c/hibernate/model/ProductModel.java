package com.team_c.hibernate.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class ProductModel implements Serializable {

	public ProductModel(){}


	private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "product_name")
    private String product_name;
    
    @Column(name = "price")
    private String price;
    
    @Column(name = "manufacturing_date")
    private String manufacturing_date;
    
    @Column(name = "expiry_date")
    private String expiry_date;
    
    @Column(name = "category")
    private String category;
    
    @Column(name = "shop_id")
    private String shop_id;

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

	public String getManufacturing_date() {
		return manufacturing_date;
	}

	public void setManufacturing_date(String manufacturing_date) {
		this.manufacturing_date = manufacturing_date;
	}

	public String getExpiry_date() {
		return expiry_date;
	}

	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public ProductModel(int id, String product_name, String price, String manufacturing_date, String expiry_date,
			String category, String shop_id) {
		super();
		this.id = id;
		this.product_name = product_name;
		this.price = price;
		this.manufacturing_date = manufacturing_date;
		this.expiry_date = expiry_date;
		this.category = category;
		this.shop_id = shop_id;
	}

    
}