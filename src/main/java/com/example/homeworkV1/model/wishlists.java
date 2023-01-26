package com.example.homeworkV1.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "wishlists")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class wishlists extends base {

	private Long projectId;
	private int salaryAgreement;
	private String content;
	private int result = 0;
}
