package com.ilp03.services;

import java.sql.Connection;
import java.util.Scanner;

import com.ilp03.dao.TrainerRatingDao;
import com.ilp03.entity.TrainerRating;

public class TrainerRatingServiceImpl implements TrainerRatingService {

	@Override
	public void getTrainerRating() {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter Trainer First Name: ");
		String fName= scanner.nextLine();
		Connection connection = TrainerRatingDao.getConnection();
		TrainerRating trainerRating = TrainerRatingDao.getTrainerRating(connection,fName);
		System.out.println("|-----------------------------------------------------------------------------------------------------------------------------------------------|");
		System.out.println("| First Name   |    Last Name  |  Min Rating  |  Max Rating  |  Average Rating |Rating Count less than or equal to 5|Rating Count Greater than 5|");
		System.out.println("|--------------|---------------|--------------|--------------|-----------------|------------------------------------|---------------------------|");
		System.out.printf("|%-13s | %-13s | %12.1f | %12.1f | %16.2f| %35d|%27d|%n",
		                    trainerRating.getFirstName(), trainerRating.getLastName(), 
		                    trainerRating.getMinRating(), trainerRating.getMaxRating(), 
		                    trainerRating.getAvgRating(),trainerRating.getRatingBelowFive(), trainerRating.getRatingAboveFive());
		System.out.println("|-----------------------------------------------------------------------------------------------------------------------------------------------|");

	}

}
