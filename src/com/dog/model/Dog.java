package com.dog.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Dog entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_dog", catalog = "dog")
public class Dog implements java.io.Serializable {

	// Fields

	private Integer dogid;
	private String dogname;
	private Double unitprice;
	private String filepath;
	private Double price;
	private String sex;
	private Set<Order> orders = new HashSet<Order>(0);
	private Set<Order> orders_1 = new HashSet<Order>(0);

	// Constructors

	/** default constructor */
	public Dog() {
	}

	/** full constructor */
	public Dog(String dogname, Double unitprice, String filepath, Double price,
			String sex, Set<Order> orders, Set<Order> orders_1) {
		this.dogname = dogname;
		this.unitprice = unitprice;
		this.filepath = filepath;
		this.price = price;
		this.sex = sex;
		this.orders = orders;
		this.orders_1 = orders_1;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "dogid", unique = true, nullable = false)
	public Integer getDogid() {
		return this.dogid;
	}

	public void setDogid(Integer dogid) {
		this.dogid = dogid;
	}

	@Column(name = "dogname", length = 40)
	public String getDogname() {
		return this.dogname;
	}

	public void setDogname(String dogname) {
		this.dogname = dogname;
	}

	@Column(name = "unitprice", precision = 22, scale = 0)
	public Double getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}

	@Column(name = "filepath", length = 100)
	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	@Column(name = "price", precision = 22, scale = 0)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "sex", length = 200)
	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "dog")
	public Set<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "dog")
	public Set<Order> getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set<Order> orders_1) {
		this.orders_1 = orders_1;
	}

}