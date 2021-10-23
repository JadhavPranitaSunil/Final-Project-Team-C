package com.team_c.hibernate.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.team_c.hibernate.model.ProductModel;
import com.team_c.hibernate.model.ShopModel;
import com.team_c.hibernate.util.HibernateUtil;

public class ProductDao {
	    
	  @SuppressWarnings("unchecked")
	  public List < ProductModel > getAllproducts(String shop_id) {

	      Transaction transaction = null;
	      List < ProductModel > listOfProducts = null;
	      Session session = HibernateUtil.getSessionFactory().openSession();
	      listOfProducts = session.createQuery("from ProductModel P WHERE P.shop_id = "+shop_id).list();
	      return listOfProducts;
	  }
	  
	  @SuppressWarnings("unchecked")
	  public List < ProductModel > getAllProductsOfAllShops() {

	      Transaction transaction = null;
	      List < ProductModel > listOfProducts = null;
	      Session session = HibernateUtil.getSessionFactory().openSession();
	      listOfProducts = session.createQuery("from ProductModel").list();
	      return listOfProducts;
	  }
	  
	  public void addShop(ProductModel productModel) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.save(productModel);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	   }
	  
	  public void deleteProduct(int id) {

	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();

	            // Delete a user object
	            ProductModel product = session.get(ProductModel.class, id);
	            if (product != null) {
	                session.delete(product);
	            }
	            
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }
	  
	  public void updateProduct(ProductModel product) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.update(product);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

}
