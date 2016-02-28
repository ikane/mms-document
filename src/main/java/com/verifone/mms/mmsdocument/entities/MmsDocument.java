package com.verifone.mms.mmsdocument.entities;

import java.util.Date;

public class MmsDocument {
	
	private Integer idDocument;
	private String title;
	private String description;
	private Date creationDate;
	
	public MmsDocument() {
		// TODO Auto-generated constructor stub
	}
	
	public MmsDocument(Integer idDocument, String title, String description, Date creationDate) {
		super();
		this.idDocument = idDocument;
		this.title = title;
		this.description = description;
		this.creationDate = creationDate;
	}
	
	public Integer getIdDocument() {
		return idDocument;
	}
	public void setIdDocument(Integer idDocument) {
		this.idDocument = idDocument;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
}
