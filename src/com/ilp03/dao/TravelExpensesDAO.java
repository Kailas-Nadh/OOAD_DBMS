package com.ilp03.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ilp03.entity.Accomodations;
import com.ilp03.entity.Departments;
import com.ilp03.entity.Employees;
import com.ilp03.entity.Hotels;
import com.ilp03.entity.TravelExpenses;
import com.ilp03.entity.TravelRequests;

public class TravelExpensesDAO {

	public static Connection getConnection() {
		String connectionString = "jdbc:mysql://localhost:3306/employeetravel_db?useSSL=false";
		String userName = "root";
		String password = "Hiroshima@1945";
		Connection connection = null;

		try {
			connection = DriverManager.getConnection(connectionString, userName, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;
	}

	public static void closeConnection(Connection connection) {
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static ArrayList<TravelExpenses> getTravelExpenseDataBasedOnEmployees(Connection connection,
			String employeeName) {

		ArrayList<TravelExpenses> travelExpensesList = new ArrayList<TravelExpenses>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"SELECT * FROM employees AS E INNER JOIN departments AS D ON E.dept_id = D.dept_id INNER JOIN travel_requests AS TR ON E.employee_id = TR.employee_id INNER JOIN travel_expenses AS TE ON TR.travel_request_id = TE.travel_request_id INNER JOIN accomodations AS A ON TR.travel_request_id = A.travel_request_id INNER JOIN hotels AS H ON A.hotel_id = H.hotel_id where E.employee_first_name=?");
			preparedStatement.setString(1, employeeName);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				int departmentID = resultSet.getInt("dept_id");
				String departmentName = resultSet.getString("dept_name");
				Departments departments = new Departments(departmentID, departmentName);

				int hotelID = resultSet.getInt("hotel_id");
				String hotelName = resultSet.getString("hotel_name");
				String location = resultSet.getString("location");
				Hotels hotels = new Hotels(hotelID, hotelName, location);

				int employeeID = resultSet.getInt("employee_id");
				String employeeFirstName = resultSet.getString("employee_first_name");
				String employeeLastName = resultSet.getString("employee_last_name");
				long phoneNumber = resultSet.getLong("employee_phnumber");
				String employeeCreatedDate = resultSet.getString("created_date");
				String employeeUpdatedDate = resultSet.getString("updated_date");
				Employees employees = new Employees(employeeID, employeeFirstName, employeeLastName, phoneNumber,
						departments, null, null, employeeCreatedDate, employeeUpdatedDate);

				int travelRequestID = resultSet.getInt("travel_request_id");
				String startDate = resultSet.getString("start_date");
				String endDate = resultSet.getString("end_date");
				String destination = resultSet.getString("destination");
				String travelPurpose = resultSet.getString("travel_purpose");
				String transportationType = resultSet.getString("transportation_type");
				String status = resultSet.getString("status");
				TravelRequests travelRequests = new TravelRequests(travelRequestID, employees, startDate, endDate,
						destination, travelPurpose, transportationType, status);

				int travelExpenseID = resultSet.getInt("travel_expenses_id");
				int travelExpense = resultSet.getInt("travel_expense");
				String expenseDate = resultSet.getString("expense_date");
				String expenseCreatedDate = resultSet.getString("created_date");
				String expenseUpdatedDate = resultSet.getString("updated_date");
				TravelExpenses travelExpenses = new TravelExpenses(travelExpenseID, travelRequests, travelExpense,
						expenseDate, employees, employees, expenseCreatedDate, expenseUpdatedDate);

				int accomodationID = resultSet.getInt("accomodation_id");
				String checkinDate = resultSet.getString("checkin_date");
				String checkoutDate = resultSet.getString("checkout_date");
				int accomodationExpense = resultSet.getInt("accomodation_expense");
				String accomodationCreatedDate = resultSet.getString("created_date");
				String accomodationUpdatedDate = resultSet.getString("updated_date");
				Accomodations accomodations = new Accomodations(accomodationID, travelRequests, hotels, checkinDate,
						checkoutDate, accomodationExpense, employees, employees, accomodationCreatedDate,
						accomodationUpdatedDate);
				travelExpensesList.add(travelExpenses);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return travelExpensesList;

	}

}
