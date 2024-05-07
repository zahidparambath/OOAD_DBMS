package com.ilp03.entity;

public class Responses {
	private int responseId;
	private int sessionId;
	private int traineeId;
	private float rating;
	private String comments;
	private Employee employee;
	private TrainingSession trainingSession;
	public Responses(int responseId, int sessionId, int traineeId, float rating, String comments) {
		this.responseId = responseId;
		this.sessionId = sessionId;
		this.traineeId = traineeId;
		this.rating = rating;
		this.comments = comments;
	}
	
	public Responses(int responseId, Employee employee, TrainingSession trainingSession, float rating, String comments ) {
		this.responseId = responseId;
		this.employee=employee;
		this.trainingSession=trainingSession;
		this.rating = rating;
		this.comments = comments;
		
	}
	public int getResponseId() {
		return responseId;
	}
	public void setResponseId(int responseId) {
		this.responseId = responseId;
	}
	public int getSessionId() {
		return sessionId;
	}
	public void setSessionId(int sessionId) {
		this.sessionId = sessionId;
	}
	public int getTraineeId() {
		return traineeId;
	}
	public void setTraineeId(int traineeId) {
		this.traineeId = traineeId;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public TrainingSession getTrainingSession() {
		return trainingSession;
	}

	public void setTrainingSession(TrainingSession trainingSession) {
		this.trainingSession = trainingSession;
	}
	
}
