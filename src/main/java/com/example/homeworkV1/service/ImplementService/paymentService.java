package com.example.homeworkV1.service.ImplementService;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.homeworkV1.model.payment;
import com.example.homeworkV1.model.project;
import com.example.homeworkV1.model.userdetails;
import com.example.homeworkV1.repositories.paymentRepository;
import com.example.homeworkV1.repositories.projectRepository;
import com.example.homeworkV1.repositories.userdetailsRepository;
import com.example.homeworkV1.service.IpaymentService;

public class paymentService implements IpaymentService {

	@Autowired
	private paymentRepository paymentRepo;
	@Autowired
	private projectRepository projectRepo;
	@Autowired
	private userdetailsRepository userdetailsRepo;
	
	public int pay(payment pay, boolean approve) {
		// TODO Auto-generated method stub
		int flag = 0;
		project myProject = new project();
		myProject = projectRepo.getById(pay.getProjectId());
		userdetails youUserdetails = new userdetails();
		youUserdetails = userdetailsRepo.getByCreateBy(pay.getRecipientId());
		if(approve) {
			// cập nhật lại trạng thái dự án
			myProject.setResult(5);
			// trả tiền dự án
			youUserdetails.setMoneyFreeze(youUserdetails.getMoney() + pay.getSalary());
			projectRepo.save(myProject);
			userdetailsRepo.save(youUserdetails);
			paymentRepo.save(pay);
			flag = 1;
		}
		else {
			pay.setResult(0);
			paymentRepo.save(pay);
			flag = -1;
		}
		return flag;
	}

}
