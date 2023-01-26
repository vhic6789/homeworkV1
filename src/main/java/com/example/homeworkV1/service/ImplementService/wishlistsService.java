package com.example.homeworkV1.service.ImplementService;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.homeworkV1.model.project;
import com.example.homeworkV1.model.userdetails;
import com.example.homeworkV1.model.wishlists;
import com.example.homeworkV1.repositories.projectRepository;
import com.example.homeworkV1.repositories.userdetailsRepository;
import com.example.homeworkV1.repositories.wishlistsRepository;
import com.example.homeworkV1.service.IwishlistsService;

public class wishlistsService implements IwishlistsService {

	@Autowired
	private wishlistsRepository wishlistsRepo;
	@Autowired
	private projectRepository projectRepo;
	@Autowired
	private userdetailsRepository userdetailRepo;

	// tham gia vào dự án
	public int joinProject(wishlists w) {
		// TODO Auto-generated method stub
		project projectJoin = new project();
		projectJoin = projectRepo.getById(w.getProjectId());
		int flag = 0;
		int countJoinProjectNowday = wishlistsRepo.countJoinProjectNowday(w.getCreateBy());
		if (countJoinProjectNowday > 5) { // tham gia quá 5 dự án 1 ngày
			flag = -1;
		} else {
			wishlistsRepo.save(w);
			flag = 1;
		}
		return flag;
	}

	// người làm chấp thuận dự án
	public int approveProject(Long projectId, Long wishlistsId, boolean approve) {
		int flag = 0;
		project projectJoin = new project();
		projectJoin = projectRepo.getById(projectId);
		wishlists myProject = new wishlists();
		myProject = wishlistsRepo.getById(wishlistsId);
		userdetails you = new userdetails();
		you = userdetailRepo.getByCreateBy(projectJoin.getCreateBy());
		if (approve) {
			projectJoin.setResult(3);
			myProject.setResult(2);
			projectRepo.save(projectJoin);
			wishlistsRepo.save(myProject);
			flag = 1;
		}
		else {
			//cài đặt lại trạng thái
			projectJoin.setResult(1);
			myProject.setResult(0);
			//hoàn lại tiền đóng băng
			you.setMoneyFreeze(you.getMoneyFreeze() - myProject.getSalaryAgreement());
			you.setMoney(you.getMoney() + myProject.getSalaryAgreement());
			projectRepo.save(projectJoin);
			wishlistsRepo.save(myProject);
			flag = -1;
		}
		return flag;
	}
}
