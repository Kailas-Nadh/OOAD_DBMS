package com.ilp03.entity;

public class Accomodations {

	private int accomodationID;
	private TravelRequests travelRequestID;
	private Hotels hotelID;
	private String checkinDate;
	private String checkoutDate;
	private int accomodationExpense;
	private Employees createdBy;
	private Employees updatedBy;
	private String createdDate;
	private String updatedDate;

	public Accomodations(int accomodationID, TravelRequests travelRequestID, Hotels hotelID, String checkinDate,
			String checkoutDate, int accomodationExpense, Employees createdBy, Employees updatedBy, String createdDate,
			String updatedDate) {
		this.accomodationID = accomodationID;
		this.travelRequestID = travelRequestID;
		this.hotelID = hotelID;
		this.checkinDate = checkinDate;
		this.checkoutDate = checkoutDate;
		this.accomodationExpense = accomodationExpense;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}

	public int getAccomodationID() {
		return accomodationID;
	}

	public void setAccomodationID(int accomodationID) {
		this.accomodationID = accomodationID;
	}

	public TravelRequests getTravelRequestID() {
		return travelRequestID;
	}

	public void setTravelRequestID(TravelRequests travelRequestID) {
		this.travelRequestID = travelRequestID;
	}

	public Hotels getHotelID() {
		return hotelID;
	}

	public void setHotelID(Hotels hotelID) {
		this.hotelID = hotelID;
	}

	public String getCheckinDate() {
		return checkinDate;
	}

	public void setCheckinDate(String checkinDate) {
		this.checkinDate = checkinDate;
	}

	public String getCheckoutDate() {
		return checkoutDate;
	}

	public void setCheckoutDate(String checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	public int getAccomodationExpense() {
		return accomodationExpense;
	}

	public void setAccomodationExpense(int accomodationExpense) {
		this.accomodationExpense = accomodationExpense;
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
