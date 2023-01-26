package com.example.homeworkV1.service;

import com.example.homeworkV1.model.wishlists;

public interface IwishlistsService {
	public int joinProject(wishlists w);
	public int approveProject(Long projectId, Long wishlistsId, boolean approve);
}
