package com.example.homeworkV1.service;

import com.example.homeworkV1.model.payment;

public interface IpaymentService {
	public int pay(payment pay, boolean approve);
}
