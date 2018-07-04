package com.dog.model;

import java.util.HashSet;
import java.util.Set;

/**
 * AbstractDog entity provides the base persistence definition of the Dog
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractDog implements java.io.Serializable {

	// Fields

	private Integer dogid;
	private String dogname;
	private Double unitprice;
	private String filepath;
	private Double price;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public AbstractDog() {
	}

	/** minimal constructor */
	public AbstractDog(String filepath) {
		this.filepath = filepath;
	}

	/** full constructor */
	public AbstractDog(String dogname, Double unitprice, String filepath,
			Double price, Set orders) {
		this.dogname = dogname;
		this.unitprice = unitprice;
		this.filepath = filepath;
		this.price = price;
		this.orders = orders;
	}

	// Property accessors

	public Integer getDogid() {
		return this.dogid;
	}

	public void setDogid(Integer dogid) {
		this.dogid = dogid;
	}

	public String getDogname() {
		return this.dogname;
	}

	public void setDogname(String dogname) {
		this.dogname = dogname;
	}

	public Double getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}