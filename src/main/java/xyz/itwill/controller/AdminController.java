package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import exception.UserNotFoundException;
import xyz.itwill.dto.Product;
import xyz.itwill.dto.Qna;
import xyz.itwill.dto.Reservation;
import xyz.itwill.service.ProductService;
import xyz.itwill.service.QnaService;
import xyz.itwill.service.ReservationService;
import xyz.itwill.service.ReviewService;
import xyz.itwill.service.UserService;
import xyz.itwill.util.Pager;

@Controller
public class AdminController {
	@Autowired
	public UserService userService;
	 
	@Autowired
	public ReservationService reservationService;
	
	@Autowired
	public ProductService productService;
	
	@Autowired
	public QnaService qnaService; 
	
	@Autowired
	public ReviewService reviewService;
 	
	//������ ����
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model) {
		//���� ���� ����
		model.addAttribute("todayRsvnCount", reservationService.getTodayRsvnCount());
		model.addAttribute("todayRsvnList", reservationService.getTodayRsvnList());
		//���� ������ ȸ��
		model.addAttribute("todayUsersCount", userService.getTodayUsersCount());
		model.addAttribute("todayUsersList", userService.getTodayUsersList());
		//���� ���� ����
		/*
		 * model.addAttribute("todayQnaCount", qnaService.getTodayQnaCount());
		 * model.addAttribute("todayQnaList", qnaService.getTodayQnaList());
		 */
		//��ü ��ǰ ����
		model.addAttribute("totalProductCount", productService.getTotalProductCount());
		model.addAttribute("totalProductList", productService.getTotalProductList());
		return "admin";
	}
	
	//*********************�������*********************//
	//������ - �˻� ���
	@RequestMapping(value = "/admin/rsvnList")
	public String adminRsvnList(Model model, @RequestParam(defaultValue = "1") int pageNum, String searchRNo, String searchName) {
		int totalRsvn=0;
		
		Map<String, Object> searchMap = new HashMap<String, Object>(); 
		searchMap.put("searchRNo", searchRNo);
		searchMap.put("searchName", searchName);
		
		if(searchRNo!=null && !searchRNo.equals("")) {//�˻�� �ִ� ���
			model.addAttribute("searchRNo", searchMap.get("searchRNo"));
		} else if(searchName!=null && !searchName.equals(""))  {
			model.addAttribute("searchName", searchMap.get("searchName"));
		} 
		totalRsvn = reservationService.getSearchRsvnCount(searchMap); //�˻���� ���� �� ���� ���� ��ȯ
		
		int pageSize=10; 
		int blockSize=5; 
		Pager pager = new Pager(pageNum, totalRsvn, pageSize, blockSize); 
  		Map<String, Object> pagerMap = new HashMap<String, Object>(); 
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());	
		pagerMap.put("searchRNo", searchRNo); // mapper�� search������ ���� sql�� ����(���� sql)
		pagerMap.put("searchName", searchName); // mapper�� search������ ���� sql�� ����(���� sql)
		
		
		model.addAttribute("rsvnAllList", reservationService.getSearchRsvnList(pagerMap)); 
		model.addAttribute("pager", pager); 		
		
		return "admin/admin_rsvnList";
	}
	
	//�����
	@RequestMapping(value = "/admin/rsvnDetail", method = RequestMethod.GET)
	public String adminRsvnDetail(Reservation reservation, Model model) {
		model.addAttribute("rsvnDetail", reservationService.getRsvnDetail(reservation.getrNo()));
		return "admin/admin_rsvnDetail";
	}
	
	//�������
	@RequestMapping(value = "/admin/rsvnCancel", method = RequestMethod.GET)
	public String adminRsvnCancel(int rNo) {
		reservationService.modifyRsvnCancel(rNo);
		return "redirect:/admin/rsvnList";
	}

	//*********************ȸ������*********************//
	//ȸ����� - �˻� ���
	@RequestMapping(value = "/admin/usersList")
	public String adminUsersList(Model model, @RequestParam(defaultValue = "1") int pageNum, String searchId, String searchName) {
		int totalUsers=0;
		
		Map<String,Object> searchMap=new HashMap<String,Object>();
		searchMap.put("searchId", searchId);
		searchMap.put("searchName", searchName);
		
		if(searchId!= null && !searchId.equals("")) {//�˻�� �ִ� ���
			model.addAttribute("searchId", searchMap.get("searchId"));
		} else if(searchName!= null && !searchName.equals("")) {
			model.addAttribute("searchName", searchMap.get("searchName"));			
		} 
		totalUsers = userService.getSearchUsersCount(searchMap); //�˻���� ���� �� ���� ���� ��ȯ
		
		int pageSize=10; 
		int blockSize=5; 
		Pager pager = new Pager(pageNum, totalUsers, pageSize, blockSize); 
		Map<String, Object> pagerMap = new HashMap<String, Object>(); 
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());	
		pagerMap.put("searchId", searchId); // mapper�� search������ ���� sql�� ����(���� sql)
		pagerMap.put("searchName", searchName); // mapper�� search������ ���� sql�� ����(���� sql)
		
		
		model.addAttribute("usersAllList" ,userService.getSearchUsersList(pagerMap)); 
		model.addAttribute("pager", pager); 		
		
		return "admin/admin_usersList";
	}
	
	//ȸ��Ż��
	@RequestMapping("/admin/usersDelete")
	public String adminUsersDelete(HttpServletRequest request) throws UserNotFoundException {
		String[] checkId=request.getParameterValues("checkId");
		for(String id:checkId) {
			userService.updateMemberStatus(id);
		}
		return "redirect:/admin/usersList";
	}
	
	//*********************�������װ���*********************//
	@RequestMapping(value = "/admin/noticeList")
	public String adminNoticeList(Model model, @RequestParam(defaultValue = "1") int pageNum, String searchRNo, String searchName) {
		int totalNotice=0;
		
		Map<String, Object> searchMap = new HashMap<String, Object>(); 
		searchMap.put("searchRNo", searchRNo);
		searchMap.put("searchName", searchName);
		
		if(searchRNo!=null && !searchRNo.equals("")) {//�˻�� �ִ� ���
			model.addAttribute("searchRNo", searchMap.get("searchRNo"));
		} else if(searchName!=null && !searchName.equals(""))  {
			model.addAttribute("searchName", searchMap.get("searchName"));
		} 
		totalNotice = reservationService.getSearchRsvnCount(searchMap); //�˻���� ���� �� ���� ���� ��ȯ
		
		int pageSize=10; 
		int blockSize=5; 
		Pager pager = new Pager(pageNum, totalNotice, pageSize, blockSize); 
		Map<String, Object> pagerMap = new HashMap<String, Object>(); 
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());	
		pagerMap.put("searchRNo", searchRNo); // mapper�� search������ ���� sql�� ����(���� sql)
		pagerMap.put("searchName", searchName); // mapper�� search������ ���� sql�� ����(���� sql)
		
		
		model.addAttribute("rsvnAllList", reservationService.getSearchRsvnList(pagerMap)); 
		model.addAttribute("pager", pager); 		
		
		return "admin/admin_noticeList";
	}
	
	//*********************Q&A����*********************//
	@RequestMapping(value = "/admin/qnaList")
	public String adminQnaList(Model model, @RequestParam(defaultValue = "1") int pageNum, String searchRNo, String searchName) {
		int totalQna=0;
		
		Map<String, Object> searchMap = new HashMap<String, Object>(); 
		searchMap.put("searchRNo", searchRNo);
		searchMap.put("searchName", searchName);
		
		if(searchRNo!=null && !searchRNo.equals("")) {//�˻�� �ִ� ���
			model.addAttribute("searchRNo", searchMap.get("searchRNo"));
		} else if(searchName!=null && !searchName.equals(""))  {
			model.addAttribute("searchName", searchMap.get("searchName"));
		} 
		totalQna = reservationService.getSearchRsvnCount(searchMap); //�˻���� ���� �� ���� ���� ��ȯ
		
		int pageSize=10; 
		int blockSize=5; 
		Pager pager = new Pager(pageNum, totalQna, pageSize, blockSize); 
  		Map<String, Object> pagerMap = new HashMap<String, Object>(); 
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());	
		pagerMap.put("searchRNo", searchRNo); // mapper�� search������ ���� sql�� ����(���� sql)
		pagerMap.put("searchName", searchName); // mapper�� search������ ���� sql�� ����(���� sql)
		
		
		model.addAttribute("rsvnAllList", reservationService.getSearchRsvnList(pagerMap)); 
		model.addAttribute("pager", pager); 		
		
		return "admin/admin_qnaList";
	}
	
	//*********************�̿��ı����*********************//
	@RequestMapping(value = "/admin/reviewList")
	public String adminReviewList(Model model, @RequestParam(defaultValue = "1") int pageNum, String searchRNo, String searchName) {
		int totalReview=0;
		
		Map<String, Object> searchMap = new HashMap<String, Object>(); 
		searchMap.put("searchRNo", searchRNo);
		searchMap.put("searchName", searchName);
		
		if(searchRNo!=null && !searchRNo.equals("")) {//�˻�� �ִ� ���
			model.addAttribute("searchRNo", searchMap.get("searchRNo"));
		} else if(searchName!=null && !searchName.equals(""))  {
			model.addAttribute("searchName", searchMap.get("searchName"));
		} 
		totalReview = reservationService.getSearchRsvnCount(searchMap); //�˻���� ���� �� ���� ���� ��ȯ
		
		int pageSize=10; 
		int blockSize=5; 
		Pager pager = new Pager(pageNum, totalReview, pageSize, blockSize); 
  		Map<String, Object> pagerMap = new HashMap<String, Object>(); 
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());	
		pagerMap.put("searchRNo", searchRNo); // mapper�� search������ ���� sql�� ����(���� sql)
		pagerMap.put("searchName", searchName); // mapper�� search������ ���� sql�� ����(���� sql)
		
		
		model.addAttribute("rsvnAllList", reservationService.getSearchRsvnList(pagerMap)); 
		model.addAttribute("pager", pager); 		
		
		return "admin/admin_reviewList";
	}
	
	//*********************��ǰ����*********************//
	//��ǰ��� - �˻� ���
	@RequestMapping(value = "/admin/productList")
	public String adminProductList(Model model, @RequestParam(defaultValue = "1") int pageNum, String searchPNo, String searchPName) {
		int totalProduct=0;
		
		Map<String,Object> searchMap=new HashMap<String,Object>();
		searchMap.put("searchPNo", searchPNo);
		searchMap.put("searchPName", searchPName);
		
		if(searchPNo!= null && !searchPNo.equals("")) {
			model.addAttribute("searchPNo", searchMap.get("searchPNo"));
		} else {
			model.addAttribute("searchPName", searchMap.get("searchPName"));
		}
		totalProduct = productService.getSearchProductCount(searchMap); //�˻���� ���� �� ���� ���� ��ȯ
		
		int pageSize=10; 
		int blockSize=5; 
		Pager pager = new Pager(pageNum, totalProduct, pageSize, blockSize); 
		Map<String, Object> pagerMap = new HashMap<String, Object>(); 
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());	
		pagerMap.put("searchPNo", searchPNo); // mapper�� search������ ���� sql�� ����(���� sql)
		pagerMap.put("searchPName", searchPName); // mapper�� search������ ���� sql�� ����(���� sql)
		
		
		model.addAttribute("productAllList" ,productService.getSearchProductList(pagerMap)); 
		model.addAttribute("pager", pager); 		
		
		return "admin/admin_productList";
	}
	
	//��ǰ��
	@RequestMapping(value = "/admin/productDetail", method = RequestMethod.GET)
	public String adminproductDetail(Product product, Model model) {
		model.addAttribute("productDetail", productService.getProductDetail(product.getpNo()));
		return "admin/admin_productDetail";
	}
	
	//��ǰ����
	@RequestMapping(value = "/admin/productDelete", method = RequestMethod.GET)
	public String adminproductDelete(int pNo) {
		productService.removeProduct(pNo);
		return "redirect:/admin/productList";
	}
	
	
	
	//����������
	@RequestMapping("/error")
	public String adminAuthError() {
		return "error/error";
	}
	
	//���� ó�� Ŭ���� �ڵ鷯 ���
	@ExceptionHandler(Exception.class)
	public String exceptionHander() {
		return "error/error";
	}
}
