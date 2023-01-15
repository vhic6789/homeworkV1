package com.example.homeworkV1.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "userdetails")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class userdetails extends base {

	private Long userId;
	private String nameBank;
	private String numberBank;
	private int money;
	private int moneyFreeze;
	private int teamId;
	private int reputation;
	
}
