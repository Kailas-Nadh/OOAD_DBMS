package com.ilp03.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

import com.ilp03.dao.AccomodationsDAO;
import com.ilp03.dao.TravelExpensesDAO;
import com.ilp03.dao.TravelRequestsDAO;
import com.ilp03.entity.Accomodations;
import com.ilp03.entity.TravelExpenses;

public class EmployeeServiceImpl implements EmployeesService {

	@Override
	public void getTravelDataBasedOnEmployees() {

		try {
			Scanner scanner = new Scanner(System.in);
			Connection connection = AccomodationsDAO.getConnection();
			System.out.println("Enter the employee name:");
			String employeeFirstName = scanner.nextLine();
			ArrayList<TravelExpenses> employeeExpensesList = TravelExpensesDAO
					.getTravelExpenseDataBasedOnEmployees(connection, employeeFirstName);
			ArrayList<Accomodations> accomodationsList = AccomodationsDAO
					.getTravelAccomodationDataBasedOnEmployees(connection, employeeFirstName);

			System.out.println(String.format("%-20s%-25s%-25s%-20s%-30s%-25s%-20s%-25s%-25s%-20s%-20s%-20s%-20s",
					"First Name:", "Last Name:", "Dept Name:", "Destination:", "Travel Purpose:", "Transport Type:",
					"Start Date:", "End Date:", "Hotel Name:", "Check-in:", "Check-out:", "Travel Expense:",
					"Accommodation Expense:"));
			for (int index = 0; index < employeeExpensesList.size(); index++) {
				TravelExpenses travelExpenses = employeeExpensesList.get(index);
				Accomodations accommodations = accomodationsList.get(index);
				System.out.println(String.format("%-20s%-25s%-25s%-20s%-30s%-25s%-20s%-25s%-25s%-20s%-20s%-20s%-20s",
						travelExpenses.getTravelRequestID().getEmployeeID().getEmployeeFirstName(),
						travelExpenses.getTravelRequestID().getEmployeeID().getEmployeeLastName(),
						travelExpenses.getTravelRequestID().getEmployeeID().getDepartmentID().getDepartmentName(),
						travelExpenses.getTravelRequestID().getDestination(),
						travelExpenses.getTravelRequestID().getTravelPurpose(),
						travelExpenses.getTravelRequestID().getTransportationType(),
						travelExpenses.getTravelRequestID().getStartDate(),
						travelExpenses.getTravelRequestID().getEndDate(), accommodations.getHotelID().getHotelName(),
						accommodations.getCheckinDate(), accommodations.getCheckoutDate(),
						travelExpenses.getTravelExpense(), accommodations.getAccomodationExpense()));
			}

			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void insertIntoTravelRequests() {
		try {
			Scanner scanner = new Scanner(System.in);
			Connection connection = AccomodationsDAO.getConnection();
			System.out.println("Enter Employee ID:");
			int employeeID = scanner.nextInt();
			scanner.nextLine();
			System.out.println("Enter Destination:");
			String destination = scanner.nextLine();
			System.out.println("Enter Travel Purpose:");
			String travelPurpose = scanner.nextLine();
			System.out.println("Enter Transport type:");
			String transportType = scanner.nextLine();
			System.out.println("Enter Start Date:");
			String enteredStartDate = scanner.nextLine();
			Date startDate = Date.valueOf(enteredStartDate);
			System.out.println("Enter End date:");
			String enteredEndDate = scanner.nextLine();
			Date endDate = Date.valueOf(enteredEndDate);
			TravelRequestsDAO.insertIntoTravelRequests(connection, employeeID, startDate, endDate, destination,
					travelPurpose, transportType);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
