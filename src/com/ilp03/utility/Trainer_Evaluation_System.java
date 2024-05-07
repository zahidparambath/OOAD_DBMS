package com.ilp03.utility;

import java.sql.Connection;
import java.util.Scanner;

import com.ilp03.dao.EmployeeDao;
import com.ilp03.dao.UserDao;
import com.ilp03.services.ResponsesServiceImpl;
import com.ilp03.services.ResponsesServices;
import com.ilp03.services.TrainerRatingService;
import com.ilp03.services.TrainerRatingServiceImpl;

public class Trainer_Evaluation_System {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		char goBackToMenu = 'y';
		Scanner scanner = new Scanner(System.in);
		System.out.println("******Trainer Evaluation System******");
		
		do {
			System.out.println("*******Select*******");
			System.out.println("1. View all responses\n2. Find Trainer Rating\n3. Add new user");
			int choice = scanner.nextInt();
			switch (choice) {
			case 1:
				ResponsesServices responsesService = new ResponsesServiceImpl();
				responsesService.getAllResponses();

				break;
			case 2:
				TrainerRatingService trainerRatingService = new TrainerRatingServiceImpl();
				trainerRatingService.getTrainerRating();
				break;
				
			case 3:
				Connection connection1 = UserDao.getConnection();
				UserDao.insertUser(connection1);
				Connection connection2 = EmployeeDao.getConnection();
				EmployeeDao.insertEmployee(connection2);
				break;
			default: System.out.println("Invalid Choice");
			
			}
			System.out.println("Do you want to continue(y/n): ");
			goBackToMenu=scanner.next().charAt(0);
		} while (goBackToMenu == 'y');
		

	}

}
