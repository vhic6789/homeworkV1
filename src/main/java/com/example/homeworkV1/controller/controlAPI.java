package com.example.homeworkV1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class controlAPI {
	
	@GetMapping(path = "/")
	public String index() {
		return "test api 123"; // them vao test
	}
}
