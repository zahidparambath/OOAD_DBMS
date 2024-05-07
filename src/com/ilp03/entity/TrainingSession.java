package com.ilp03.entity;

import java.time.LocalDate;

public class TrainingSession {
	private int sessionId;
	private int trainerId;
	private String topic;
	private LocalDate sessionDate;
	private int duration;
	private int participantCount;
	public TrainingSession(int sessionId, int trainerId, String topic, LocalDate sessionDate, int duration,
			int participantCount) {
		this.sessionId = sessionId;
		this.trainerId = trainerId;
		this.topic = topic;
		this.sessionDate = sessionDate;
		this.duration = duration;
		this.participantCount = participantCount;
	}
	
	public TrainingSession(String topic) {
		this.topic = topic;
	}
	public int getSessionId() {
		return sessionId;
	}
	public void setSessionId(int sessionId) {
		this.sessionId = sessionId;
	}
	public int getTrainerId() {
		return trainerId;
	}
	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public LocalDate getSessionDate() {
		return sessionDate;
	}
	public void setSessionDate(LocalDate sessionDate) {
		this.sessionDate = sessionDate;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getParticipantCount() {
		return participantCount;
	}
	public void setParticipantCount(int participantCount) {
		this.participantCount = participantCount;
	}
	
	
	
}
