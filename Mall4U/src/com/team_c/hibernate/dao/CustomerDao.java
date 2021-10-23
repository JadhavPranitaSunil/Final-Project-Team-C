package com.team_c.hibernate.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.team_c.hibernate.model.CustomerModel;
import com.team_c.hibernate.util.HibernateUtil;

public class CustomerDao {
	    
	public CustomerModel validate(String userName, String password) {//"FROM User U WHERE U.username = :userName"

	      Transaction transaction = null;

	      Session session = HibernateUtil.getSessionFactory().openSession();
	      CustomerModel customerModel = (CustomerModel) session.createQuery("FROM CustomerModel C WHERE C.mobile = "+userName).uniqueResult();
	     // System.out.print(customerModel.getName());
	      if(customerModel != null && customerModel.getPassword().equals(password)) {
	    	  return customerModel;
	      }
	      
	      return null;
	    }
	  
	  public void addCustomer(CustomerModel customerModel) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.save(customerModel);
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
