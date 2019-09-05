package com.revature.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.revature.models.Project;
import com.revature.services.ProjectService;

@RestController
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	private ProjectService ps;
	
	@GetMapping
	public List<Project> findAll() {
		List<Project> allProject = ps.findAll();
		if(allProject == null) {
			return null;
		}else {
			return allProject;
		}
		
	}
	@PostMapping
	public String saveProject() {
		return "you saved a project";
	}

}
