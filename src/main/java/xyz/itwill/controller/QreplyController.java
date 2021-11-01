package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.itwill.dto.Qreply;
import xyz.itwill.dto.Users;
import xyz.itwill.service.QreplyService;

@Controller
public class QreplyController {
	@Autowired
	private QreplyService qreplyService;
	 //¥Ò±€¿€º∫
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(Qreply qreply, HttpSession session) throws Exception {
		Users user =  (Users) session.getAttribute("loginSession");
		qreply.setQrwriter(user.getName());
		qreplyService.write(qreply);
		
		return "redirect:/qna_detail?qno=" + qreply.getQno();
		
	}
	
}
