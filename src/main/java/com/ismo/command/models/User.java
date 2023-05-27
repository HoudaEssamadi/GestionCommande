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



}