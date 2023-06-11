package com.ismo.command.metier;

import java.util.List;


import com.ismo.command.models.Categorie;
import com.ismo.command.dao.DaoCategorie;
import com.ismo.command.dao.IDao;

public class IMetierDaoCate implements IMetier<Categorie>{

	IDao<Categorie> dao = new DaoCategorie();
	@Override
	public List<Categorie> getAll() {
		// TODO Auto-generated method stub
		return dao.getAll();
	}

}
