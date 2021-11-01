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

	//��ǰ - �����ڽ� ������
	@RequestMapping(value = "/rc_course")
	public String regCourse() {
		return "website/rc_course_info";
	}
	
	//��ǰ - ������ڽ� ������
	@RequestMapping(value = "/rc_course_special")
	public String specialCourse() {
		return "website/rc_course_special";
	}
	
	//����Ȯ�� ������
	@RequestMapping(value = "/rsvnList")
	public String revIdentify() {
		return "mypage/mypage_rsvnList";
	}
	
	//�¹��� �̺�Ʈ ������
	@RequestMapping(value = "/rc_event")
	public String rcEvent() {
		return "website/rc_event";
	}
	
	//ȫ���� ������
	@RequestMapping(value = "/additional_facility_info")
	public String additionalFacilityInfo() {
		return "website/additional_facility_info";
	}
}
