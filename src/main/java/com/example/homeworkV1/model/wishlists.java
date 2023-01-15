package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "wishlists")
public class wishlists extends base {

	private Long projectId;
	private int salaryAgreement;
	private String content;
	private int result;
	
	public wishlists() {
		super();
	}

	public wishlists(Long projectId, int salaryAgreement, String content, int result) {
		super();
		this.projectId = projectId;
		this.salaryAgreement = salaryAgreement;
		this.content = content;
		this.result = result;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public int getSalaryAgreement() {
		return salaryAgreement;
	}

	public void setSalaryAgreement(int salaryAgreement) {
		this.salaryAgreement = salaryAgreement;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}
	
}
