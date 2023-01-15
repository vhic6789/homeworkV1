package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "transaction")
public class transaction extends base {

	private String code;
	private String type;
	private int money;
	private int result;
	private int status;
	
	public transaction() {
		super();
	}

	public transaction(String code, String type, int money, int result, int status) {
		super();
		this.code = code;
		this.type = type;
		this.money = money;
		this.result = result;
		this.status = status;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
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
