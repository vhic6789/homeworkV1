package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "universities")
public class universities extends base {

	private String area;
	private String name;
	private int status;
	
	public universities() {
		super();
	}

	public universities(String area, String name, int status) {
		super();
		this.area = area;
		this.name = name;
		this.status = status;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
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
