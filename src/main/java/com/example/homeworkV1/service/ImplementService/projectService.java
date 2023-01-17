package com.example.homeworkV1.service.ImplementService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.homeworkV1.model.project;
import com.example.homeworkV1.repositories.projectRepository;
import com.example.homeworkV1.service.IprojectService;

@Service
public class projectService implements IprojectService {

	@Autowired
	private projectRepository projectRepo;
	
	public List<project> getAll() {
		// TODO Auto-generated method stub
		return projectRepo.findAll();
	}

}
