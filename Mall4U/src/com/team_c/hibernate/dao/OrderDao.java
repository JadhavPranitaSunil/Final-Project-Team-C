package com.team_c.hibernate.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.team_c.hibernate.model.CustomerModel;
import com.team_c.hibernate.model.OrderModel;
import com.team_c.hibernate.model.ProductModel;
import com.team_c.hibernate.util.HibernateUtil;

public class OrderDao {
	public void addOrder(OrderModel order) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(order);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
   }
	
	public List <OrderModel> getOrders(int id) {//"FROM User U WHERE U.username = :userName"

	      Transaction transaction = null;

	      Session session = HibernateUtil.getSessionFactory().openSession();
	      @SuppressWarnings("unchecked")
	      List <OrderModel> orders = session.createQuery("FROM OrderModel O WHERE O.customer_id = "+id).list();
	      
	      return orders;
	    }
	
	 public void deleteOrder(int id) {

	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();

	            // Delete a user object
	            OrderModel order = session.get(OrderModel.class, id);
	            if (order != null) {
	                session.delete(order);
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
}
