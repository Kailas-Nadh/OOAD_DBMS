package com.ilp03.utility;

import java.util.Scanner;

import com.ilp03.service.EmployeeServiceImpl;
import com.ilp03.service.EmployeesService;

public class EmployeeTravelUtility {

	public static void main(String[] args) {
		System.out.println("*****EMPLOYEE TRAVEL MANAGEMENT*****");
		char continueQuery = 'y';
		Scanner scanner = new Scanner(System.in);
		EmployeeServiceImpl employeeService = new EmployeeServiceImpl();
		do {
			System.out.println("1.Insert a travel request  2.Display Travel Details of an employee");
			int choice = scanner.nextInt();
			switch (choice) {
			case 1:
				employeeService.insertIntoTravelRequests();
				break;
			case 2:
				employeeService.getTravelDataBasedOnEmployees();
				break;
			default:
				System.out.println("Invalid Choice");
				break;
			}
			System.out.println("Do you want to continue (y/n)");
			continueQuery = scanner.next().charAt(0);
		} while (continueQuery == 'y');

	}

}
