package com.example.homeworkV1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.homeworkV1.model.project;
import com.example.homeworkV1.service.ImplementService.projectService;


@RestController
public class controlAPI {
	
	@Autowired
	private projectService projectS;
	
	@GetMapping(path = "/")
	public ResponseEntity<?> index() {
		return ResponseEntity.ok(projectS.getAll());
	}
}
