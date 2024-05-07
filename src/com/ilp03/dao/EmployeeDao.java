package com.ilp03.dao;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class EmployeeDao {
	public static Connection getConnection() {
	    String url = "jdbc:mysql://localhost:3306/trainer_evaluation_system_db?useSSL=false";
	    String userName = "root";
	    String password = "2616";
	    Connection connection = null;
	    try {
			connection = DriverManager.getConnection(url, userName, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return connection;
	}
	public static void   closeConnection(Connection connection)
	{
		try {
			connection.close();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void insertEmployee(Connection connection)
	{
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter User ID : ");
		int userId=scanner.nextInt();
		scanner.nextLine();
		System.out.println("Enter First Name : ");
		String firstName=scanner.nextLine();
		System.out.println("Enter Last Name : ");
		String lastName=scanner.nextLine();
		System.out.println("Enter Phone Number : ");
		BigInteger phNumber=scanner.nextBigInteger();
		scanner.nextLine();
		System.out.println("Enter Designation ID : ");
		int designationId=scanner.nextInt();
		 
		try {
			PreparedStatement statement=connection.prepareStatement("insert into employee(user_id,employee_firstname,employee_lastname,ph_number, designation_id)values(?,?,?,?,?)");
			statement.setInt(1,userId);
			statement.setString(2,firstName);
			statement.setString(3,lastName);
			statement.setInt(4, designationId);
			statement.setInt(5, designationId);
			int resultSet=statement.executeUpdate();
			
			
		if (resultSet>0)
		{
			System.out.println("Success");
		}
		else
		{
			System.out.println("Failed");
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
