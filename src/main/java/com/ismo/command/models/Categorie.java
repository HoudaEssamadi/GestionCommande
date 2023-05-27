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
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name ="Categorie")
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

}