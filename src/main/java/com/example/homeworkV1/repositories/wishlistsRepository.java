package com.example.homeworkV1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.homeworkV1.model.wishlists;

public interface wishlistsRepository extends JpaRepository<wishlists, Long> {
	// đếm số project đã được chấp thuận ngày hôm nay
	@Query(value = "SELECT COUNT(id) FROM wishlists WHERE createDate >= DATE(NOW()) AND createBy = ?1 AND result = 1", nativeQuery=true)
	public int countJoinProjectNowday(Long createBy);
	//kiểm tra xem dự án đã duyệt ai chưa
	@Query(value = "SELECT COUNT(id) FROM wishlists WHERE projectId = ?1 AND result = 1", nativeQuery=true)
	public int checkJoinProject(Long projectId);
}
