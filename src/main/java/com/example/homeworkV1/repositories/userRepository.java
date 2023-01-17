package com.example.homeworkV1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.homeworkV1.model.user;

public interface userRepository extends JpaRepository<user, Long> {

}
