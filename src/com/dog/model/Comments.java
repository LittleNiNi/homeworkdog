package com.dog.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Comments entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "comments", catalog = "dog")
public class Comments implements java.io.Serializable {

	// Fields

	private Integer id;
	private String filepath;
	private String replyname;
	private String time;
	private String content;
	private String address;
	private String osname;

	// Constructors

	/** default constructor */
	public Comments() {
	}

	/** minimal constructor */
	public Comments(String filepath, String replyname, String content,
			String address, String osname) {
		this.filepath = filepath;
		this.replyname = replyname;
		this.content = content;
		this.address = address;
		this.osname = osname;
	}

	/** full constructor */
	public Comments(String filepath, String replyname, String time,
			String content, String address, String osname) {
		this.filepath = filepath;
		this.replyname = replyname;
		this.time = time;
		this.content = content;
		this.address = address;
		this.osname = osname;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "filepath", nullable = false, length = 100)
	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	@Column(name = "replyname", nullable = false, length = 100)
	public String getReplyname() {
		return this.replyname;
	}

	public void setReplyname(String replyname) {
		this.replyname = replyname;
	}

	@Column(name = "time", length = 100)
	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Column(name = "content", nullable = false, length = 1000)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "address", nullable = false, length = 100)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "osname", nullable = false, length = 40)
	public String getOsname() {
		return this.osname;
	}

	public void setOsname(String osname) {
		this.osname = osname;
	}

}