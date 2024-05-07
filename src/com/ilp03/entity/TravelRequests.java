package com.ilp03.entity;

public class TravelRequests {

	private int travelRequestID;
	private Employees employeeID;
	private String startDate;
	private String endDate;
	private String destination;
	private String travelPurpose;
	private String transportationType;
	private String status;

	public TravelRequests(int travelRequestID, Employees employeeID, String startDate, String endDate,
			String destination, String travelPurpose, String transportationType, String status) {
		this.travelRequestID = travelRequestID;
		this.employeeID = employeeID;
		this.startDate = startDate;
		this.endDate = endDate;
		this.destination = destination;
		this.travelPurpose = travelPurpose;
		this.transportationType = transportationType;
		this.status = status;
	}

	public int getTravelRequestID() {
		return travelRequestID;
	}

	public void setTravelRequestID(int travelRequestID) {
		this.travelRequestID = travelRequestID;
	}

	public Employees getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(Employees employeeID) {
		this.employeeID = employeeID;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getTravelPurpose() {
		return travelPurpose;
	}

	public void setTravelPurpose(String travelPurpose) {
		this.travelPurpose = travelPurpose;
	}

	public String getTransportationType() {
		return transportationType;
	}

	public void setTransportationType(String transportationType) {
		this.transportationType = transportationType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
