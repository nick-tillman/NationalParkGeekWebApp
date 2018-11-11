package com.techelevator.npgeek.model;

import java.util.List;

public interface SurveyDao {

	public List<Survey> getAllSurveys();
	public List<Survey> getSurveysByPark(String parkcode);
	public void saveSurvey(Survey survey);

	
}
