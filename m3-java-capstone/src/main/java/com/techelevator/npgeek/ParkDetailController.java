package com.techelevator.npgeek;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.ParkDao;
import com.techelevator.npgeek.model.Weather;
import com.techelevator.npgeek.model.WeatherDao;

@Controller
public class ParkDetailController {

	@Autowired
	private ParkDao parkDao;
	@Autowired
	private WeatherDao weatherDao;
	
	@RequestMapping("/parkDetail")
	public String showParkDetail(ModelMap map, @RequestParam String code) {
		Park park = parkDao.getParkByCode(code);
		List<Weather> forecast = weatherDao.getWeatherForecastForPark(code);
		map.put("park", park);
		map.put("forecast", forecast);
		return "parkDetail";
	}
}
