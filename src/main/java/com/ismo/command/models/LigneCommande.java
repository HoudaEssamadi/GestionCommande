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

@Data
@Entity
@Table(name = "LigneCommande")
public class LigneCommande {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int qteCommandee;
	@Column
	private float remise;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="idProduit")
	private Produit produit;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="idCommande")
	private Produit commande;
	
}