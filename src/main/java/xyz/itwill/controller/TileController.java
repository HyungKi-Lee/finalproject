package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TileController {
	@RequestMapping("/")
	public String tiles() {
		return "main";
	}
	
	@RequestMapping("/rc_info_ci")
	public String rcBI() {
		return "website/rc_info_ci";
	}
	
	@RequestMapping("/rc_history")
	public String rcHistory() {
		return "website/rc_history";
	}
	
	@RequestMapping("/media_notice")
	public String mediaNotice() {
		return "website/additional_facility_info";
	}
	
	@RequestMapping("/direction_info")
	public String directionInfo() {
		return "website//direction_info";
	}
	
	@RequestMapping("/rc_agreement")
	public String rcAgreement() {
		return "website/rc_agreement";
	}
}
