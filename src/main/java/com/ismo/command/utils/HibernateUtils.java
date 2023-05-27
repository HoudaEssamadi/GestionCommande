package com.ismo.command.utils;

import org.hibernate.SessionFactory;

import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.ismo.command.models.Categorie;
import com.ismo.command.models.Commande;
import com.ismo.command.models.LigneCommande;
import com.ismo.command.models.Produit;
import com.ismo.command.models.User;

public class HibernateUtils {
	
	private static final SessionFactory sessionFactory;
	private static final ServiceRegistry serviceRegistry;
	
	static {
		Configuration config = new Configuration();
		config.configure();
		
		config.addAnnotatedClass(Produit.class);
		config.addAnnotatedClass(Categorie.class);
		config.addAnnotatedClass(Commande.class);
		config.addAnnotatedClass(LigneCommande.class);
		config.addAnnotatedClass(User.class);
		
		serviceRegistry = new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
		sessionFactory = config.buildSessionFactory(serviceRegistry);
	}

	public static SessionFactory getSessionfactory() {
		return sessionFactory;
	}
}