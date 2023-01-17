package com.example.homeworkV1.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "universities")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class universities extends base {

	private String name;
	private String code;
	private String area;
	private int status;
	
}
