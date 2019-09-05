package com.revature.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revature.models.Project;
import com.revature.repositories.ProjectDao;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectDao pd;
	
	@Override
	public List<Project> findAll() {
		// TODO Auto-generated method stub
		return pd.findAll();
	}

}
