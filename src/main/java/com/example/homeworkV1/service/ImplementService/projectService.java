package com.example.homeworkV1.service.ImplementService;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
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

	public int createProject(project p) {
		int flag = 0;
		// TODO Auto-generated method stub
		LocalDate nowday = LocalDate.now();
		String nowdaystring = nowday.toString(); // "2023-01-10"
		int countProjectNowday = projectRepo.countProjectNowday(nowdaystring, p.getCreateBy());
		System.out.println(countProjectNowday);
		if(countProjectNowday > 9)
			flag = -1;
		else {
			projectRepo.save(p);
			flag = 1;
		}
		return flag;
	}

}
