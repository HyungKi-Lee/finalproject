package xyz.itwill.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	//상품 - 정규코스 페이지
	@RequestMapping(value = "/rc_course")
	public String regCourse() {
		return "website/rc_course_info";
	}
	
	//상품 - 스페셜코스 페이지
	@RequestMapping(value = "/rc_course_special")
	public String specialCourse() {
		return "website/rc_course_special";
	}
	
	//예약확인 페이지
	@RequestMapping(value = "/rsvnList")
	public String revIdentify() {
		return "mypage/mypage_rsvnList";
	}
	
	//승무원 이벤트 페이지
	@RequestMapping(value = "/rc_event")
	public String rcEvent() {
		return "website/rc_event";
	}
	
	//홍보관 페이지
	@RequestMapping(value = "/additional_facility_info")
	public String additionalFacilityInfo() {
		return "website/additional_facility_info";
	}
}
