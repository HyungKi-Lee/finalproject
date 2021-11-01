package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import exception.NotLoginStautsException;
import xyz.itwill.dto.Reservation;
import xyz.itwill.dto.Users;
import xyz.itwill.service.QnaService;
import xyz.itwill.service.ReservationService;
import xyz.itwill.service.ReviewService;
import xyz.itwill.service.UserService;
import xyz.itwill.util.Paging;

@Controller
public class MypageController {
	@Autowired
	public ReservationService reservationService;
	
	@Autowired
	public QnaService qnaService; 
	
	@Autowired
	public ReviewService reviewService; 
	
	@Autowired
	public UserService userService;
	
	@RequestMapping(value =  "/mypage/main", method = RequestMethod.GET)
	public String mypageMain(Model model, HttpSession session) {
		//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//���� ���� ����
		model.addAttribute("myRsvnList", reservationService.getRsvnListById(loginSession.getId()));
		//���� ���� ����
		model.addAttribute("myQnaList", qnaService.getQnaListById(loginSession.getId()));
		//���� �ı� ����
		model.addAttribute("myReviewList", reviewService.getReviewListById(loginSession.getId()));
		return "mypage/mypage_main";
	}
	
	
	@RequestMapping(value = "/mypage/rsvnList", method = RequestMethod.GET)
	public String mypageRsvnList(Paging paging, Model model, HttpSession session
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//RESERVATION ���̺� ����� �ش� ���̵��� ���� ���� ��ȯ�޾� ����
		int totalList=reservationService.getMyRsvnCount(loginSession.getId());
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}
		paging = new Paging(totalList, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		// ���� ����
		Map<String, Object> myRsvnListMap = new HashMap<String, Object>();
		myRsvnListMap.put("id", loginSession.getId());
		myRsvnListMap.put("start", paging.getStart());
		myRsvnListMap.put("end", paging.getEnd());
		
		model.addAttribute("paging", paging);
		model.addAttribute("myRsvnAllList", reservationService.getMyRsvnList(myRsvnListMap));
		// ���� ��

		return "mypage/mypage_rsvnList";
	}
	
	@RequestMapping(value =  "/mypage/rsvnDetail", method = RequestMethod.GET)
	public String mypageRsvnDetail(Reservation reservation, Model model) {
		model.addAttribute("rsvnDetail", reservationService.getRsvnDetail(reservation.getrNo()));
		return "mypage/mypage_rsvnDetail";
	}
	
	//���� ���
	@RequestMapping(value = "/mypage/rsvnCancel", method = RequestMethod.GET)
	public String mypageRsvnCancel(int rNo) {
		reservationService.modifyRsvnCancel(rNo);
		return "redirect:/mypage/rsvnList";
	}
	
	@RequestMapping("/mypage/qnaList")
	public String mypageQnaList(Paging paging, Model model, HttpSession session
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//QNA ���̺� ����� �ش� ���̵��� ���� ���� ��ȯ�޾� ����
		int totalList=qnaService.getMyQnaCount(loginSession.getId());
			
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}
		paging = new Paging(totalList, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		Map<String, Object> myQnaListMap = new HashMap<String, Object>();
		myQnaListMap.put("id", loginSession.getId());
		myQnaListMap.put("start", paging.getStart());
		myQnaListMap.put("end", paging.getEnd());
		
		model.addAttribute("paging", paging);
		model.addAttribute("myQnaAllList", qnaService.getMyQnaList(myQnaListMap));
		
		return "mypage/mypage_qnaList";
	}
	
	@RequestMapping("/mypage/reviewList")
	public String mypageReviewList(Paging paging, Model model, HttpSession session
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//REVIEW ���̺� ����� �ش� ���̵��� ���� ���� ��ȯ�޾� ����
		int totalList=reviewService.getMyReviewCount(loginSession.getId());
			
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}
		paging = new Paging(totalList, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		Map<String, Object> myReviewListMap = new HashMap<String, Object>();
		myReviewListMap.put("id", loginSession.getId());
		myReviewListMap.put("start", paging.getStart());
		myReviewListMap.put("end", paging.getEnd());
		
		model.addAttribute("paging", paging);
		model.addAttribute("myReviewAllList", reviewService.getMyReviewList(myReviewListMap));	
		
		return "mypage/mypage_reviewList";
	}
}
