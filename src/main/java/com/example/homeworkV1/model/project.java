package com.example.homeworkV1.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "project")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class project extends base {

	private String title;
	private String description;
	private String listImage;
	private String content;
	private int salary;
	private String finishTime;
	private String request;
	private int result =  1;
	private int status = 1;
	
}
