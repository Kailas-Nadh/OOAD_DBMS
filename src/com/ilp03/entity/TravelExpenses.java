package com.ilp03.entity;

public class TravelExpenses {

	private int travelExpenseID;
	private TravelRequests travelRequestID;
	private int travelExpense;
	private String expenseDate;
	private Employees createdBy;
	private Employees updatedBy;
	private String createdDate;
	private String updatedDate;

	public TravelExpenses(int travelExpenseID, TravelRequests travelRequestID, int travelExpense, String expenseDate,
			Employees createdBy, Employees updatedBy, String createdDate, String updatedDate) {
		this.travelExpenseID = travelExpenseID;
		this.travelRequestID = travelRequestID;
		this.travelExpense = travelExpense;
		this.expenseDate = expenseDate;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}

	public int getTravelExpenseID() {
		return travelExpenseID;
	}

	public void setTravelExpenseID(int travelExpenseID) {
		this.travelExpenseID = travelExpenseID;
	}

	public TravelRequests getTravelRequestID() {
		return travelRequestID;
	}

	public void setTravelRequestID(TravelRequests travelRequestID) {
		this.travelRequestID = travelRequestID;
	}

	public int getTravelExpense() {
		return travelExpense;
	}

	public void setTravelExpense(int travelExpense) {
		this.travelExpense = travelExpense;
	}

	public String getExpenseDate() {
		return expenseDate;
	}

	public void setExpenseDate(String expenseDate) {
		this.expenseDate = expenseDate;
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
