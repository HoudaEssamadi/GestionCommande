package com.ismo.command.metier;


import java.util.List;


import com.ismo.command.models.Produit;
import com.ismo.command.dao.DaoProduit;
import com.ismo.command.dao.IDao;

public class IMetierDaoProduit implements IMetier<Produit>{
	
	IDao<Produit> dao = new DaoProduit();
	@Override
	public List<Produit> getAll() {
		return dao.getAll();
	}

}
