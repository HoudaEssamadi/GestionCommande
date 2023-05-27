package com.ismo.command.models;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ismo.command.dao.DaoProduit;
import com.ismo.command.dao.IDao;
import com.ismo.command.utils.HibernateUtils;

public class main {

	public static void main(String[] args) {
		
		IDao<Produit> doa= new DaoProduit();
		doa.getAll();

	}

}
