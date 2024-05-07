package com.ilp03.entity;

public class Departments {
	private int DepartmentID;
	private String departmentName;

	public Departments(int DepartmentID, String departmentName) {
		this.DepartmentID = DepartmentID;
		this.departmentName = departmentName;
	}

	public int getDepartmentID() {
		return DepartmentID;
	}

	public void setDepartmentId(int DepartmentID) {
		this.DepartmentID = DepartmentID;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

}
