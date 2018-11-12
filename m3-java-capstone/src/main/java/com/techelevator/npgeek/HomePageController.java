package com.techelevator.npgeek;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.ParkDao;

@Controller
public class HomePageController {
	
	@Autowired
	private ParkDao parkDao;
	
	@RequestMapping ("/") 
	public String showHomePage(ModelMap map) {
		List<Park> list = parkDao.getAllParks();
		map.put("allParks", list);
		return "homePage";
	}

}
