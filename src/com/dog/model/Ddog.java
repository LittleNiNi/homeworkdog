package com.dog.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Ddog entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_ddog", catalog = "dog")
public class Ddog implements java.io.Serializable {

	// Fields

	private Integer ddogid;
	private String ddogname;
	private Double unitprice;
	private String filepath;

	// Constructors

	/** default constructor */
	public Ddog() {
	}

	/** full constructor */
	public Ddog(String ddogname, Double unitprice, String filepath) {
		this.ddogname = ddogname;
		this.unitprice = unitprice;
		this.filepath = filepath;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "ddogid", unique = true, nullable = false)
	public Integer getDdogid() {
		return this.ddogid;
	}

	public void setDdogid(Integer ddogid) {
		this.ddogid = ddogid;
	}

	@Column(name = "ddogname", length = 40)
	public String getDdogname() {
		return this.ddogname;
	}

	public void setDdogname(String ddogname) {
		this.ddogname = ddogname;
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

}