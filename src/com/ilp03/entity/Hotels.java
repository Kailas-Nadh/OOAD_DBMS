package com.ilp03.entity;

public class Hotels {

	private int hotelID;
	private String hotelName;
	private String location;

	public Hotels(int hotelID, String hotelName, String location) {
		this.hotelID = hotelID;
		this.hotelName = hotelName;
		this.location = location;
	}

	public int getHotelID() {
		return hotelID;
	}

	public void setHotelID(int hotelID) {
		this.hotelID = hotelID;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

}
