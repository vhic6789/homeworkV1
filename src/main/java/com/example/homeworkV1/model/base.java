package com.example.homeworkV1.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@MappedSuperclass
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public abstract class base {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "createDate")
	private Date createDate;
	
	@Column(name = "createBy")
	private Long createBy;
	
	@Column(name = "modifiedDate")
	private Date modifiedDate;
	
	@Column(name = "modifiedBy")
	private Long modifiedBy;
	
}