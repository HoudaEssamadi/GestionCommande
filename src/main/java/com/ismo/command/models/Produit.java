package com.ismo.command.models;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "Produit")
@Data
public class Produit {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int idProduit;
	
	@Column
	private String title;
	
	@Column
	private String description;
	
	@Column
	private float price;
	
	@Column
	private float discount;
	
	@Column
	private float rating;
	
	@Column
	private int stock;
	
	@Column
	private String brand;
	
	@Column
	private String thumbnail;
	
	@Column
	private String image1;
	
	@Column
	private String image2;
	
	@Column
	private String image3;
	
	@Column
	private String image4;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="idCategorie")
	private Categorie categorie;
	
//	@OneToMany(mappedBy="produit", fetch=FetchType.EAGER)
//	private List<Commande> commandes=new ArrayList<Commande>();

	@OneToMany(mappedBy="produit", fetch=FetchType.EAGER)
	private List<LigneCommande> ligneCommandes;


}