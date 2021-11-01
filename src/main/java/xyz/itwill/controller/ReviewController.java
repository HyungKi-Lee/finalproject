package xyz.itwill.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import xyz.itwill.dto.Review;
import xyz.itwill.dto.Users;
import xyz.itwill.service.ReviewService;
import xyz.itwill.util.PageMaker;
import xyz.itwill.util.SearchCriteria;

@Controller
public class ReviewController {

	@Autowired
	ReviewService service;
	
	@Autowired
	WebApplicationContext applicationContext;
	
	
	// �̿��ı� ����Ʈ ���
		@RequestMapping(value = "/review_list", method = RequestMethod.GET)
		public String list(Model model, SearchCriteria scri, HttpSession session) throws Exception {
			//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
			Users loginSession=(Users)session.getAttribute("loginSession");	
			
			model.addAttribute("list", service.list(scri));
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(scri);
			pageMaker.setTotalCount(service.listCount(scri));
			model.addAttribute("pageMaker", pageMaker);
			model.addAttribute("loginSession", loginSession);
			return "review/review_list";

		}
	

		// �̿��ı� ����ȸ
		@RequestMapping(value = "/review_detail", method = RequestMethod.GET)
		public String getRead( Review review , Model model) throws Exception {
			model.addAttribute("read", service.read(review.getRno()));
			
			return "review/review_detail";
		}

		// �̿��ı� �ۼ�(������, �α��� ����ڸ� �ۼ� ����)
		@RequestMapping(value = "/review_write", method = RequestMethod.GET)
		public String getWrite() throws Exception {
			return "review/review_write";
		}

		@RequestMapping(value = "/review_write", method = RequestMethod.POST)
		public String postWrite(Review review, HttpSession session, Model model, MultipartFile multipartFile) throws Exception {
			//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
			String uploadDir=applicationContext.getServletContext().getRealPath("/WEB-INF/reviewimg");
			String fileName=multipartFile.getOriginalFilename();
			Users loginSession=(Users)session.getAttribute("loginSession");				
			model.addAttribute("loginSession", loginSession);
			
			Users user = (Users) session.getAttribute("loginSession");
			fileName=user.getId()+System.currentTimeMillis();
			File file=new File(uploadDir, fileName);
			multipartFile.transferTo(file);
			if (multipartFile.isEmpty()) {
				review.setRimg(null);
			} else {			
				review.setRimg(fileName);
			}
			System.out.println("fileName="+fileName);
			service.write(review);
			return "redirect:/review_list";
		}

		// �̿��ı� ����(������, ���ۼ��ڸ� ���� ����)
		@RequestMapping(value = "/review_modify", method = RequestMethod.GET)
		public String getModify(Review review, Model model) throws Exception {
			model.addAttribute("read", service.read(review.getRno()));
			return "review/review_modify";
		}

		@RequestMapping(value = "/review_modify", method = RequestMethod.POST)
		public String postModify(Review review) throws Exception {
			service.update(review);
			return "redirect:/review_detail?rno=" + review.getRno();
		}
		//�̿��ı� ����
		@RequestMapping(value = "/review_delete", method = RequestMethod.GET)
		public String getDelete(int rno) throws Exception {
			service.delete(rno);
			return "redirect:/review_list";
		}
	
	
	
	
}
