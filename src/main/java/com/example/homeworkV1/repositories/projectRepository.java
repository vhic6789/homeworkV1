package com.example.homeworkV1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.homeworkV1.model.project;

public interface projectRepository extends JpaRepository<project, Long> {
	// đếm số project đã tạo ngày hôm nay
	@Query(value = "SELECT COUNT(id) FROM project WHERE createDate >= DATE(NOW()) AND createBy = ?1", nativeQuery=true)
	public int countCreateProjectNowday(Long id);
}
