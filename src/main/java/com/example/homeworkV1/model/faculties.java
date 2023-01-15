package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "faculties")
public class faculties extends base {

	private Long universityId;
	private String name;
	private int status;
	
	public faculties() {
		super();
	}

	public faculties(Long universityId, String name, int status) {
		super();
		this.universityId = universityId;
		this.name = name;
		this.status = status;
	}

	public Long getUniversityId() {
		return universityId;
	}

	public void setUniversityId(Long universityId) {
		this.universityId = universityId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
