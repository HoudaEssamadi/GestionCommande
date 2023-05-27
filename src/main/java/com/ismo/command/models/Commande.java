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
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "Commande")
@Data
public class Commande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idCommande")
	private int idCommande;
	
	@Column
	private int totalprd;
	
	@Column
	private int totalqte;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="idUser")
	private User user;
	
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="idProduit")
	private Produit produit;


	public java.util.Collection association2;

}