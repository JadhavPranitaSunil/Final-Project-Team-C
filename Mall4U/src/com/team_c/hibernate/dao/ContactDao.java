package com.team_c.hibernate.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.team_c.hibernate.model.ContactModel;
import com.team_c.hibernate.util.HibernateUtil;

public class ContactDao {
	  
	  public void createContact(ContactModel contact) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.save(contact);
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
