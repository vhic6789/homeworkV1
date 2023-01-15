package com.example.homeworkV1.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "resultproject")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class resultproject extends base {

	private Long projectId;
	private String value;
	private int status;
	
}
