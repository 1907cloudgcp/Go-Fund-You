package com.revature.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.revature.models.Project;

public interface ProjectDao extends JpaRepository<Project, Integer>{

}
