package com.example.homeworkV1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.homeworkV1.model.transaction;

public interface transactionRepository extends JpaRepository<transaction, Long> {

}
