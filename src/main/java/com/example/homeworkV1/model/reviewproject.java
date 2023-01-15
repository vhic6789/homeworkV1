package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "reviewproject")
public class reviewproject extends base {

	private Long projectId;
	private String evaluate;
	private int point;
	private int status;
	
	public reviewproject() {
		super();
	}

	public reviewproject(Long projectId, String evaluate, int point, int status) {
		super();
		this.projectId = projectId;
		this.evaluate = evaluate;
		this.point = point;
		this.status = status;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public String getEvaluate() {
		return evaluate;
	}

	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
