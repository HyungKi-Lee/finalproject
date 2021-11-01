package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.HtmlUtils;

import xyz.itwill.dto.Notice;
import xyz.itwill.dto.Users;
import xyz.itwill.service.NoticeService;
import xyz.itwill.util.Criteria;
import xyz.itwill.util.PageMaker;

@Controller
public class NoticeController {

	@Autowired
	NoticeService service;
	
	
	// 공지사항 리스트 출력
	@RequestMapping(value = "/notice_list", method = RequestMethod.GET)
	public String list(Model model, Criteria cri, HttpSession session) throws Exception {
		//HttpSession 객체에 저장된 회원 세션 불러오기
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		model.addAttribute("list", service.list(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("loginSession", loginSession);
		return "notice/notice_list";

	}
	

	// 공지사항 상세조회
	@RequestMapping(value = "/notice_detail", method = RequestMethod.GET)
	public String getRead(Notice notice, Model model) throws Exception {
		model.addAttribute("read", service.read(notice.getNno()));
		return "notice/notice_detail";
	}

	// 공지사항 작성(관리자만 작성 가능)
	@RequestMapping(value = "/notice_write", method = RequestMethod.GET)
	public String getWrite() throws Exception {
		return "notice/notice_write";
	}

	@RequestMapping(value = "/notice_write", method = RequestMethod.POST)
	public String postWrite(Notice notice) throws Exception {
		notice.setNcontent(HtmlUtils.htmlEscape(notice.getNcontent()));
		service.write(notice);
		return "redirect:/notice_list";
	}

	// 공지사항 수정(관리자만 수정 가능)
	@RequestMapping(value = "/notice_modify", method = RequestMethod.GET)
	public String getModify(Notice notice, Model model) throws Exception {
		model.addAttribute("read", service.read(notice.getNno()));
		return "notice/notice_modify";
	}

	@RequestMapping(value = "/notice_modify", method = RequestMethod.POST)
	public String postModify(Notice notice) throws Exception {
		notice.setNcontent(HtmlUtils.htmlEscape(notice.getNtitle()));
		notice.setNcontent(HtmlUtils.htmlEscape(notice.getNcontent()));
		service.update(notice);
		return "redirect:/notice_detail?nno=" + notice.getNno();
	}
	//공지사항 삭제
	@RequestMapping(value = "/notice_delete", method = RequestMethod.GET)
	public String getDelete(int nno) throws Exception {
		service.delete(nno);
		return "redirect:/notice_list";
	}
	
	 
	
	
}