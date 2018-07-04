package com.dog.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Barrage entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "barrage", catalog = "dog")
public class Barrage implements java.io.Serializable {

	// Fields

	private Integer bid;
	private String btext;

	// Constructors

	/** default constructor */
	public Barrage() {
	}

	/** full constructor */
	public Barrage(String btext) {
		this.btext = btext;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "bid", unique = true, nullable = false)
	public Integer getBid() {
		return this.bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	@Column(name = "btext", length = 50)
	public String getBtext() {
		return this.btext;
	}

	public void setBtext(String btext) {
		this.btext = btext;
	}

}