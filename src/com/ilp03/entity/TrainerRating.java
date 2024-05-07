package com.ilp03.entity;

public class TrainerRating {
	private String firstName;
	private String lastName;
	private float minRating;
	private float maxRating;
	private float avgRating;
	private int ratingBelowFive;
	private int ratingAboveFive;
	public TrainerRating(String firstName, String lastName, float minRating, float maxRating, float avgRating, int ratingBelowFive,int ratingAboveFive) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.minRating = minRating;
		this.maxRating = maxRating;
		this.avgRating = avgRating;
		this.ratingBelowFive=ratingBelowFive;
		this.ratingAboveFive=ratingAboveFive;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public float getMinRating() {
		return minRating;
	}
	public void setMinRating(float minRating) {
		this.minRating = minRating;
	}
	public float getMaxRating() {
		return maxRating;
	}
	public void setMaxRating(float maxRating) {
		this.maxRating = maxRating;
	}
	public float getAvgRating() {
		return avgRating;
	}
	public void setAvgRating(float avgRating) {
		this.avgRating = avgRating;
	}
	public int getRatingBelowFive() {
		return ratingBelowFive;
	}
	public void setRatingBelowFive(int ratingBelowFive) {
		this.ratingBelowFive = ratingBelowFive;
	}
	public int getRatingAboveFive() {
		return ratingAboveFive;
	}
	public void setRatingAboveFive(int ratingAboveFive) {
		this.ratingAboveFive = ratingAboveFive;
	}
	
	
	
}
