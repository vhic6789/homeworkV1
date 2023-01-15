package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "resultproject")
public class resultproject extends base {

	private Long projectId;
	private String value;
	private int status;
	
	public resultproject() {
		super();
	}

	public resultproject(Long projectId, String value, int status) {
		super();
		this.projectId = projectId;
		this.value = value;
		this.status = status;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
