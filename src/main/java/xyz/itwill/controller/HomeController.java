package xyz.itwill.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// *** 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 *** //
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "main";
	}
	
	}
	

