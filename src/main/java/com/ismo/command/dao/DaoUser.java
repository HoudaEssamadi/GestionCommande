package com.ismo.command.dao;

import com.ismo.command.models.User;
import com.ismo.command.utils.HibernateUtils;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class DaoUser {
	public void saveUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtils.getSessionfactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public boolean validate(String userName, String password) {

        Transaction transaction = null;
        User user = null;
        try (Session session = HibernateUtils.getSessionfactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (User) session.createQuery("FROM User U WHERE U.username = :userName").setParameter("userName", userName)
                .uniqueResult();

            if (user != null && user.getPassword().equals(password)) {
                return true;
            }
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }
}
