package com.ilp03.services;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ilp03.dao.ResponsesDao;
 
import com.ilp03.entity.Responses;

public class ResponsesServiceImpl implements ResponsesServices {

	@Override
	public void getAllResponses() {
		// TODO Auto-generated method stub
		try {
			Connection connection = ResponsesDao.getConnection();
			ArrayList<Responses> responsesList = ResponsesDao.getAllResponses(connection);
			System.out.println("|-----------------------------------------------------------------------------------------------------------------------------------------------|");
			System.out.println("| Response  |                  Session Topic             |   Trainee Name  | Rating |                          Comments                         |");
			System.out.println("|-----------|--------------------------------------------|-----------------|--------|-----------------------------------------------------------|");

			// Iterate over the responses list and print each response in tabular format
			for (Responses responses : responsesList) {
			    System.out.printf("|%10d | %-42s | %-15s | %6.1f | %-57s |%n",
			            responses.getResponseId(), responses.getTrainingSession().getTopic(), 
			            responses.getEmployee().getFirstName(), 
			            responses.getRating(), responses.getComments());
			}

			// Print the footer for the table
			System.out.println("|--------------------------------------------------------------------------------------------------- -------------------------------------------|");
			
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
