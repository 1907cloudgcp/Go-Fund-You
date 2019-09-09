package com.revature.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Project {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "project_id")
	private int projectId;

	private String name;
	
	private int fundingGoal;
	
	private ArrayList<String> donators;

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getFundingGoal() {
		return fundingGoal;
	}

	public void setFundingGoal(int fundingGoal) {
		this.fundingGoal = fundingGoal;
	}

	public List<String> getDonators() {
		return donators;
	}

	public void setDonators(ArrayList<String> donators) {
		this.donators = donators;
	}

	public Project(int projectId, String name, int fundingGoal, ArrayList<String> donators) {
		super();
		this.projectId = projectId;
		this.name = name;
		this.fundingGoal = fundingGoal;
		this.donators = donators;
	}

	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((donators == null) ? 0 : donators.hashCode());
		result = prime * result + fundingGoal;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + projectId;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Project other = (Project) obj;
		if (donators == null) {
			if (other.donators != null)
				return false;
		} else if (!donators.equals(other.donators))
			return false;
		if (fundingGoal != other.fundingGoal)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (projectId != other.projectId)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Project [projectId=" + projectId + ", name=" + name + ", fundingGoal=" + fundingGoal + ", donators="
				+ donators + "]";
	}
	
	
	
}
