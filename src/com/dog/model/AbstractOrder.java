package com.dog.model;

/**
 * AbstractOrder entity provides the base persistence definition of the Order
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractOrder implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Customer customer;
	private Dog dog;
	private Integer dognum;
	private Double total;

	// Constructors

	/** default constructor */
	public AbstractOrder() {
	}

	/** minimal constructor */
	public AbstractOrder(Dog dog) {
		this.dog = dog;
	}

	/** full constructor */
	public AbstractOrder(Customer customer, Dog dog, Integer dognum,
			Double total) {
		this.customer = customer;
		this.dog = dog;
		this.dognum = dognum;
		this.total = total;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Dog getDog() {
		return this.dog;
	}

	public void setDog(Dog dog) {
		this.dog = dog;
	}

	public Integer getDognum() {
		return this.dognum;
	}

	public void setDognum(Integer dognum) {
		this.dognum = dognum;
	}

	public Double getTotal() {
		return this.total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

}