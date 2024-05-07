package com.ilp03.entity;

public class Employee {
	private int employeeId;
	private int userId;
	private String firstName;
	private String lastName;
	private long phNumber;
	private int designationId;
	public Employee(int employeeId, int userId, String firstName, String lastName, long phNumber, int designationId) {
		this.employeeId = employeeId;
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phNumber = phNumber;
		this.designationId = designationId;
	}
	
	public Employee(String firstName) {
		this.firstName = firstName;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public long getPhNumber() {
		return phNumber;
	}
	public void setPhNumber(long phNumber) {
		this.phNumber = phNumber;
	}
	public int getDesignationId() {
		return designationId;
	}
	public void setDesignationId(int designationId) {
		this.designationId = designationId;
	}
	
	
	
}
