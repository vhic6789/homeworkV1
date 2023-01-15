package com.example.homeworkV1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "message")
public class message extends base {

	private Long recipientId;
	private String content;
	
	public message() {
		super();
	}

	public message(Long recipientId, String content) {
		super();
		this.recipientId = recipientId;
		this.content = content;
	}

	public Long getRecipientId() {
		return recipientId;
	}

	public void setRecipientId(Long recipientId) {
		this.recipientId = recipientId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
