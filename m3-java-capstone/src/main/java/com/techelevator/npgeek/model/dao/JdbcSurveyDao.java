package com.techelevator.npgeek.model.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.techelevator.npgeek.model.Survey;
import com.techelevator.npgeek.model.SurveyDao;

public class JdbcSurveyDao implements SurveyDao{
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcSurveyDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Survey> getAllSurveys() {
		List<Survey> allSurveys = new ArrayList<Survey>();
		String sql = "SELECT * FROM survey_result;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
		while(results.next()) {
			allSurveys.add(mapRowToSurvey(results));
		}
		return allSurveys;
	}
	
	@Override
	public List<Survey> getSurveysByPark(String parkcode) {
		List<Survey> surveys = new ArrayList<Survey>();
		String sql = "SELECT * FROM survey_result WHERE parkcode = ?;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sql, parkcode);
		while(results.next()) {
			surveys.add(mapRowToSurvey(results));
		}
		return surveys;
	}
	
	private Survey mapRowToSurvey(SqlRowSet results) {
		Survey survey = new Survey();
		survey.setSurveyId(results.getInt("surveyid"));
		survey.setParkCode(results.getString("parkcode"));
		survey.setEmail(results.getString("emailaddress"));
		survey.setState(results.getString("state"));
		survey.setActivityLevel(results.getString("activitylevel"));
		return survey;
	}

}
