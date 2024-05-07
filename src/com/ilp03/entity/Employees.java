package com.ilp03.entity;

public class Employees {
	private int employeeID;
	private String employeeFirstName;
	private String employeeLastName;
	private long phoneNumber;
	private Departments departmentID;
	private Employees createdBy;
	private Employees updatedBy;
	private String createdDate;
	private String updatedDate;

	public Employees(int employeeID, String employeeFirstName, String employeeLastName, long phoneNumber,
			Departments departmentID, Employees createdBy, Employees updatedBy, String createdDate,
			String updatedDate) {
		this.employeeID = employeeID;
		this.employeeFirstName = employeeFirstName;
		this.employeeLastName = employeeLastName;
		this.phoneNumber = phoneNumber;
		this.departmentID = departmentID;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}

	public int getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}

	public String getEmployeeFirstName() {
		return employeeFirstName;
	}

	public void setEmployeeFirstName(String employeeFirstName) {
		this.employeeFirstName = employeeFirstName;
	}

	public String getEmployeeLastName() {
		return employeeLastName;
	}

	public void setEmployeeLastName(String employeeLastName) {
		this.employeeLastName = employeeLastName;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Departments getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentId(Departments departmentID) {
		this.departmentID = departmentID;
	}

	public Employees getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Employees createdBy) {
		this.createdBy = createdBy;
	}

	public Employees getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(Employees updatedBy) {
		this.updatedBy = updatedBy;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

}
