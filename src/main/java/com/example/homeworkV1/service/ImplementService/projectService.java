package com.example.homeworkV1.service.ImplementService;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.homeworkV1.model.project;
import com.example.homeworkV1.model.userdetails;
import com.example.homeworkV1.model.wishlists;
import com.example.homeworkV1.repositories.projectRepository;
import com.example.homeworkV1.repositories.userdetailsRepository;
import com.example.homeworkV1.repositories.wishlistsRepository;
import com.example.homeworkV1.service.IprojectService;

@Service
public class projectService implements IprojectService {

	@Autowired
	private projectRepository projectRepo;
	@Autowired
	private userdetailsRepository userdetailRepo;
	@Autowired
	private wishlistsRepository wishlistRepo;
	
	public List<project> getAll() {
		// TODO Auto-generated method stub
		return projectRepo.findAll();
	}

	public int createProject(project p) {
		int flag = 0;
		// TODO Auto-generated method stub
		int countCreateProjectNowday = projectRepo.countCreateProjectNowday(p.getCreateBy());
		if(countCreateProjectNowday > 9)
			flag = -1; // vượt quá 9 project 1 ngày
		else {
			projectRepo.save(p);
			flag = 1;
		}
		return flag;
	}

	// duyệt người làm
	public int order(wishlists w, Long idUser) {
		int flag = 0;
		project myProject = new project();
		myProject = projectRepo.getById(w.getProjectId());
		userdetails myUserdetails = new userdetails();
		myUserdetails = userdetailRepo.getByCreateBy(idUser);
		int myMoney = myUserdetails.getMoney();
		int checkJoinProject = wishlistRepo.checkJoinProject(w.getProjectId());
		// kiểm tra lương thỏa thuận với tiền trong tài khoản, kiểm tra xem dự án đã duyệt ai chưa
		if(w.getSalaryAgreement() > myMoney || checkJoinProject > 0) {
			flag = -1;
		}
		else {
			w.setResult(1);
			wishlistRepo.save(w);// cập nhật lại
			// đóng băng lương thỏa thuận và trừ tiền trong tài khoản
			myUserdetails.setMoneyFreeze(myUserdetails.getMoneyFreeze() + w.getSalaryAgreement());
			myUserdetails.setMoney(myUserdetails.getMoney() - w.getSalaryAgreement());
			userdetailRepo.save(myUserdetails);
			// cập nhật lại trạng thái project
			myProject.setResult(2);
			projectRepo.save(myProject);
			flag = 1;
		}
		return flag;
	}
}
