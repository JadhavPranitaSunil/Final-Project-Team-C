package com.team_c.hibernate.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.team_c.hibernate.model.ProductModel;
import com.team_c.hibernate.model.ShopModel;
import com.team_c.hibernate.util.HibernateUtil;

public class ShopDao {
	    
	  @SuppressWarnings("unchecked")
	  public List < ShopModel > getAllShops() {

	      Transaction transaction = null;
	      List < ShopModel > listOfShops = null;
	      Session session = HibernateUtil.getSessionFactory().openSession();
	      listOfShops = session.createQuery("from ShopModel").list();
	      return listOfShops;
	  }
	  
	  public void createShop(ShopModel shopModel) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.save(shopModel);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	   }
	  
	  public ShopModel validate(String userName, String password) {//"FROM User U WHERE U.username = :userName"

	      Transaction transaction = null;

	      Session session = HibernateUtil.getSessionFactory().openSession();
	      ShopModel shopModel = (ShopModel) session.createQuery("FROM ShopModel S WHERE S.owner_phone = "+userName).uniqueResult();
	      
	      if(shopModel != null && shopModel.getOwner_password().equals(password)) {
	    	  return shopModel;
	      }
	      
	      return null;
	    }

	  public void deleteShop(int id) {

	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();

	            // Delete a user object
	            ShopModel shop = session.get(ShopModel.class, id);
	            if (shop != null) {
	                session.delete(shop);
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
	  
	  public void updateShop(ShopModel shop) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.update(shop);
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
