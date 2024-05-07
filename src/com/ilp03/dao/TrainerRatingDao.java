package com.ilp03.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ilp03.entity.TrainerRating;

public class TrainerRatingDao {
	public static Connection getConnection() {
		String connectionString ="jdbc:mysql://localhost:3306/trainer_evaluation_system_db?useSSL=false";
		String userName ="root";
		String password ="2616";
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(connectionString,userName,password);
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
	
	public static TrainerRating getTrainerRating(Connection connection, String firstName){
		PreparedStatement statement = null;
		ResultSet resultSet=null;
		TrainerRating trainerRating=null;
		try {
			
			String query="select emp.employee_firstname,emp.employee_lastname, min(er.rating) as min_rating, max(er.rating) as max_rating, avg(er.rating) AS avg_rating,count(case when er.rating <= 5.0 then 1 end) as rating_count_below_5,count(case when er.rating > 5.0 then 1 end) as rating_count_above_5 from evaluation_response er JOIN training_session ts on er.session_id = ts.session_id join employee emp ON ts.trainer_id = emp.employee_id where emp.employee_firstname = ? group by emp.employee_firstname, emp.employee_lastname;";
			statement = connection.prepareStatement(query);
			statement.setString(1, firstName);
			resultSet=statement.executeQuery();
			
			while(resultSet.next()) {
				String trainerFirstName=resultSet.getString(1);
				String trainerLastName=resultSet.getString(2);
				float minRating = resultSet.getFloat(3);
				float maxRating = resultSet.getFloat(4);
				float avgRating = resultSet.getFloat(5);
				int ratingBelowFive=resultSet.getInt(6);
				int ratingAboveFive = resultSet.getInt(7);
				trainerRating = new TrainerRating(trainerFirstName,trainerLastName, minRating, maxRating, avgRating,ratingBelowFive,ratingAboveFive);
			}
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return trainerRating;
	}
}
