package com.example.homeworkV1.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "user")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class user extends base {
	private String username;
	private String password;
	private String fullName;
	private String email;
	private String phone;
	private Long university;
	private Long faculty;
	private String facebook;
	private String zalo;
	private String telegram;
	private String link;
	private String avata;
	private String introduce;
	private String skills;
	private int role;
	private int status;

}

