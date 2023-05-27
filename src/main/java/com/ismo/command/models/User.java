/***********************************************************************
 * Module:  User.java
 * Author:  mic-formateur
 * Purpose: Defines the Class User
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
@Table(name = "User")
@Data
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idUser;
	
	@Column
	private String firstname;
	
	@Column
	private String lastname;
	
	@Column
	private String email;
	
	@Column
	private String maidenName;
	
	@Column
	private String gender;
	
	@Column
	private String phone;
	
	@Column
	private String username;
	
	@Column
	private String password;
	
	@Column
	private Date birthdate;
	
	@Column
	private String image;
	
	@Column
	private int height;
	
	@Column
	private int weight;
	
	@Column
	private String address;
	
	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	private List<Commande> commandes=new ArrayList<Commande>();


	public java.util.Collection commande;

	public java.util.Collection getCommande() {
		if (commande == null)
			commande = new java.util.HashSet();
		return commande;
	}

	public java.util.Iterator getIteratorCommande() {
		if (commande == null)
			commande = new java.util.HashSet();
		return commande.iterator();
	}

	public void setCommande(java.util.Collection newCommande) {
		removeAllCommande();
		for (java.util.Iterator iter = newCommande.iterator(); iter.hasNext();)
			addCommande((Commande) iter.next());
	}

	public void addCommande(Commande newCommande) {
		if (newCommande == null)
			return;
		if (this.commande == null)
			this.commande = new java.util.HashSet();
		if (!this.commande.contains(newCommande))
			this.commande.add(newCommande);
	}

	public void removeCommande(Commande oldCommande) {
		if (oldCommande == null)
			return;
		if (this.commande != null)
			if (this.commande.contains(oldCommande))
				this.commande.remove(oldCommande);
	}

	public void removeAllCommande() {
		if (commande != null)
			commande.clear();
	}

}