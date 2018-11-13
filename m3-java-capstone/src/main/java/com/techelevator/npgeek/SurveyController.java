package com.techelevator.npgeek;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.ParkDao;
import com.techelevator.npgeek.model.SurveyDao;

@Controller
public class SurveyController {
	
	@Autowired
	private ParkDao parkDao;
	
	@Autowired
	private SurveyDao surveyDao;
	
	@RequestMapping("/surveyForm")
	public String showSurveyForm(ModelMap map) {
		List<Park> list = parkDao.getAllParks();
		map.put("allParks", list);
		return "/surveyForm";
	}

}
