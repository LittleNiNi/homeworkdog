package com.dog.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Dog entity. @author MyEclipse Persistence Tools
 */

public class Dog implements java.io.Serializable {

	// Fields

	private Integer dogid;
	private String dogname;
	private Double unitprice;
	private String filepath;
	private Set orders = new HashSet(0);
	private Set orders_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Dog() {
	}

	/** full constructor */
	public Dog(String dogname, Double unitprice, String filepath, Set orders,
			Set orders_1) {
		this.dogname = dogname;
		this.unitprice = unitprice;
		this.filepath = filepath;
		this.orders = orders;
		this.orders_1 = orders_1;
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

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set orders_1) {
		this.orders_1 = orders_1;
	}

}