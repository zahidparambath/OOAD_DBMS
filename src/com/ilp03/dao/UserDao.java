package com.ilp03.dao;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class UserDao {
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

	public static void insertUser(Connection connection)
	{
		Scanner scanner = new Scanner(System.in);
		System.out.println("\t\tENTER EMPLOYEE DETAILS");
		System.out.println("Enter User Name : ");
		String userName=scanner.nextLine();
		System.out.println("Enter Password:");
		String password=scanner.nextLine();
		System.out.println("Enter Role (Admin/Trainer/Trainee) : ");
		String role = scanner.nextLine();
		try {
			
			PreparedStatement statement= connection.prepareStatement("insert into user(user_name,password,role)values(?,?,?)");
			statement.setString(1, userName);
			statement.setString(2, password);
			statement.setString(3, role);
			int resultSet=statement.executeUpdate();	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
