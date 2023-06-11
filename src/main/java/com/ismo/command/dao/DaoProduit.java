package com.ismo.command.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.Transaction;
import com.ismo.command.utils.HibernateUtils;
import com.ismo.command.models.Produit;



public class DaoProduit implements IDao<Produit>{

	@Override
	public List<Produit> getAll() {
		Session s = HibernateUtils.getSessionfactory().getCurrentSession();
		Transaction t = s.beginTransaction();
				
		List<Produit> prods = s.createQuery("from Produit").list();
		
		t.commit();
		s.close();
							
		return prods;
	}
}
