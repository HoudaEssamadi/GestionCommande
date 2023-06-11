package com.ismo.command.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ismo.command.models.Categorie;
import com.ismo.command.models.Produit;
import com.ismo.command.utils.HibernateUtils;


public class DaoCategorie implements IDao<Categorie> {
	
	@Override
	public List<Categorie> getAll() {
		Session s = HibernateUtils.getSessionfactory().getCurrentSession();
		Transaction t = s.beginTransaction();
				
		List<Categorie> cats = s.createQuery("from Categorie").list();
		
		t.commit();
		s.close();
					
		return cats;
	}
	
}

