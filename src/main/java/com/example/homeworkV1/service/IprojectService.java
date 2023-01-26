package com.example.homeworkV1.service;

import java.util.List;

import com.example.homeworkV1.model.project;
import com.example.homeworkV1.model.wishlists;

public interface IprojectService {
	public List<project> getAll();
	public int createProject(project p);
	public int order(wishlists w, Long id);
}
