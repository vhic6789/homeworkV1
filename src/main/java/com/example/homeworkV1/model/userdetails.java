package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "userdetails")
public class userdetails extends base {

	private Long userId;
	private String nameBank;
	private String numberBank;
	private int money;
	private int moneyFreeze;
	private int teamId;
	private int reputation;
	
	public userdetails() {
		super();
	}

	public userdetails(Long userId, String nameBank, String numberBank, int money, int moneyFreeze, int teamId,
			int reputation) {
		super();
		this.userId = userId;
		this.nameBank = nameBank;
		this.numberBank = numberBank;
		this.money = money;
		this.moneyFreeze = moneyFreeze;
		this.teamId = teamId;
		this.reputation = reputation;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getNameBank() {
		return nameBank;
	}

	public void setNameBank(String nameBank) {
		this.nameBank = nameBank;
	}

	public String getNumberBank() {
		return numberBank;
	}

	public void setNumberBank(String numberBank) {
		this.numberBank = numberBank;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getMoneyFreeze() {
		return moneyFreeze;
	}

	public void setMoneyFreeze(int moneyFreeze) {
		this.moneyFreeze = moneyFreeze;
	}

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public int getReputation() {
		return reputation;
	}

	public void setReputation(int reputation) {
		this.reputation = reputation;
	}
	
}
