package com.ilp03.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.ilp03.entity.Employee;
import com.ilp03.entity.Responses;
import com.ilp03.entity.TrainingSession;

public class ResponsesDao {
	public static Connection getConnection() {
		String connectionString ="jdbc:mysql://localhost:3306/trainer_evaluation_system_db?useSSL=false";
		String userName ="root";
		String password ="2616";
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
	
	public static ArrayList<Responses> getAllResponses(Connection connection) {
		Statement statement;
		
		ArrayList<Responses> responseList = new ArrayList<Responses>();
		
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("select resp.response_id as Response_no,trs.topic as Session_Topic, emp.employee_firstname as Trainee_Name,resp.rating as Rating, resp.comments from evaluation_response resp join training_session trs on resp.session_id=trs.session_id join employee emp on resp.trainee_id=emp.employee_id");
			while(resultSet.next()) {
				int responseId= resultSet.getInt(1);
				String topic = resultSet.getString(2);
				String name = resultSet.getString(3);
				float rating = resultSet.getInt(4);
				String comments = resultSet.getString(5);
				
				Employee employee= new Employee(name);
				TrainingSession trainingSession= new TrainingSession(topic);
				
				Responses responses = new Responses(responseId, employee, trainingSession, rating, comments);
				responseList.add(responses);
			}
				
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return responseList;
	}
	
	
	
}
