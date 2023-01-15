package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class payment extends base {

	private int salary;
	private Long projectId;
	private Long recipientId;
	private int result;
	private int status;
	
	public payment() {
		super();
	}

	public payment(int salary, Long projectId, Long recipientId, int result, int status) {
		super();
		this.salary = salary;
		this.projectId = projectId;
		this.recipientId = recipientId;
		this.result = result;
		this.status = status;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public Long getRecipientId() {
		return recipientId;
	}

	public void setRecipientId(Long recipientId) {
		this.recipientId = recipientId;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
