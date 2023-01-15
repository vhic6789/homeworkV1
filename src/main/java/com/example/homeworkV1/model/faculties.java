package com.example.homeworkV1.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "faculties")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class faculties extends base {

	private Long universityId;
	private String name;
	private int status;
	
}
