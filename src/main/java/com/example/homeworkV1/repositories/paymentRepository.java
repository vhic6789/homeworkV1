package com.example.homeworkV1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.homeworkV1.model.payment;

public interface paymentRepository extends JpaRepository<payment, Long> {

}
