package com.example.homeworkV1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.homeworkV1.model.message;

public interface messageRepository extends JpaRepository<message, Long> {

}
