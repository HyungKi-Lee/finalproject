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
		//HttpSession 객체에 저장된 회원 세션 불러오기
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//나의 예약 내역
		model.addAttribute("myRsvnList", reservationService.getRsvnListById(loginSession.getId()));
		//나의 문의 내역
		model.addAttribute("myQnaList", qnaService.getQnaListById(loginSession.getId()));
		//나의 후기 내역
		model.addAttribute("myReviewList", reviewService.getReviewListById(loginSession.getId()));
		return "mypage/mypage_main";
	}
	
	
	@RequestMapping(value = "/mypage/rsvnList", method = RequestMethod.GET)
	public String mypageRsvnList(Paging paging, Model model, HttpSession session
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		//HttpSession 객체에 저장된 회원 세션 불러오기
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//RESERVATION 테이블에 저장된 해당 아이디의 예약 수를 반환받아 저장
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
		
		// 수정 시작
		Map<String, Object> myRsvnListMap = new HashMap<String, Object>();
		myRsvnListMap.put("id", loginSession.getId());
		myRsvnListMap.put("start", paging.getStart());
		myRsvnListMap.put("end", paging.getEnd());
		
		model.addAttribute("paging", paging);
		model.addAttribute("myRsvnAllList", reservationService.getMyRsvnList(myRsvnListMap));
		// 수정 끝

		return "mypage/mypage_rsvnList";
	}
	
	@RequestMapping(value =  "/mypage/rsvnDetail", method = RequestMethod.GET)
	public String mypageRsvnDetail(Reservation reservation, Model model) {
		model.addAttribute("rsvnDetail", reservationService.getRsvnDetail(reservation.getrNo()));
		return "mypage/mypage_rsvnDetail";
	}
	
	//예약 취소
	@RequestMapping(value = "/mypage/rsvnCancel", method = RequestMethod.GET)
	public String mypageRsvnCancel(int rNo) {
		reservationService.modifyRsvnCancel(rNo);
		return "redirect:/mypage/rsvnList";
	}
	
	@RequestMapping("/mypage/qnaList")
	public String mypageQnaList(Paging paging, Model model, HttpSession session
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		//HttpSession 객체에 저장된 회원 세션 불러오기
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//QNA 테이블에 저장된 해당 아이디의 예약 수를 반환받아 저장
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
		
		//HttpSession 객체에 저장된 회원 세션 불러오기
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		//REVIEW 테이블에 저장된 해당 아이디의 예약 수를 반환받아 저장
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
