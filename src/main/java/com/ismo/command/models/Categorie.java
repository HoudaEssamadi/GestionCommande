/***********************************************************************
 * Module:  Categorie.java
 * Author:  mic-formateur
 * Purpose: Defines the Class Categorie
 ***********************************************************************/
package com.ismo.command.models;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "Categorie")
@Data
public class Categorie {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int idCategorie;
	
	@Column
	private String name;
	
	@OneToMany(mappedBy="categorie", fetch=FetchType.EAGER)
	private List<Produit> produits=new ArrayList<Produit>();

	//note

	public java.util.Collection produit;

	public java.util.Collection getProduit() {
		if (produit == null)
			produit = new java.util.HashSet();
		return produit;
	}

	public java.util.Iterator getIteratorProduit() {
		if (produit == null)
			produit = new java.util.HashSet();
		return produit.iterator();
	}

	public void setProduit(java.util.Collection newProduit) {
		removeAllProduit();
		for (java.util.Iterator iter = newProduit.iterator(); iter.hasNext();)
			addProduit((Produit) iter.next());
	}

	public void addProduit(Produit newProduit) {
		if (newProduit == null)
			return;
		if (this.produit == null)
			this.produit = new java.util.HashSet();
		if (!this.produit.contains(newProduit))
			this.produit.add(newProduit);
	}

	public void removeProduit(Produit oldProduit) {
		if (oldProduit == null)
			return;
		if (this.produit != null)
			if (this.produit.contains(oldProduit))
				this.produit.remove(oldProduit);
	}

	public void removeAllProduit() {
		if (produit != null)
			produit.clear();
	}

}