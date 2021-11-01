package xyz.itwill.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.tiles.request.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.itwill.dto.Product;
import xyz.itwill.dto.Reservation;
import xyz.itwill.service.ProductService;
import xyz.itwill.service.ReservationService;
import xyz.itwill.util.Criteria;
import xyz.itwill.util.PageMaker;
import xyz.itwill.util.Pager;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@Autowired
	private ProductService productService;
	   
	@Autowired
	private ReservationService reservationService;

	//예약 - 약관 동의 페이지
	@RequestMapping(value = "/rc_rev01")
	public String rcRev01(HttpSession session) {
		System.out.println(session.getAttribute("loginSession"));
		return "website/rc_rev01";
	}
	
	@RequestMapping(value = "/person")
	public String person() {
		return "website/person";
	}
	
	
	//예약 - 상품 리스트 출력 + 페이징 + 날짜로 검색
	@RequestMapping(value = "/rc_rev02")
	public String rcRev02(Model model, @RequestParam(defaultValue = "1") int pageNum, String search) throws Exception {
		int totalProduct=0;
		if(search != null && !search.equals("")) { //rc_rev02(상품)페이지 처음 접근시 에러방지목적
			//datePicker로 날짜(search)받아올 경우 format이 안되어 수동 포맷 처리
			SimpleDateFormat dateFormat = new SimpleDateFormat("yy.MM.dd");
			Date date = new Date(dateFormat.parse(search).getTime());
			search = dateFormat.format(date);
			
			totalProduct = productService.getProductCount(search); //검색기능 사용시 총 행의 갯수 반환
			model.addAttribute("search",search);
		} else {
			totalProduct = productService.getProductCount(search); //검색기능 미사용
		}
		
		int pageSize=5; // 한페이지당 출력할 행의 갯수
		int blockSize=5; // 페이지 블록의 수 (1~5/6~10)
		Pager pager = new Pager(pageNum, totalProduct, pageSize, blockSize); //Pager클래스를 이용하여 다수의 필드 계산
		Map<String, Object> pagerMap = new HashMap<String, Object>(); // 페이징 처리를 하기위해서 mapper에 map으로 매개변수를 전달
		pagerMap.put("startRow", pager.getStartRow()); // Pager에 의해 계산된 startRow - map에 put
		pagerMap.put("endRow", pager.getEndRow());	//Pager에 의해 계산된 endRow - map에 put
		pagerMap.put("search", search); // mapper에 search유무에 따라 sql문 변경(동적 sql)
		search=""; // search 초기화(부적절한 값 입력 방지)
		
		model.addAttribute("productList" ,productService.getProductList(pagerMap)); // pagerMap의 매개변수를 이용하여 select 
		model.addAttribute("pager", pager); //각 페이지 블럭에 search값을 주기위해(a태그 href속성에 쿼리 스트링) model객체에 추가
		
		return "website/rc_rev02";
	}
	
	//예약 - 예약정보 입력 페이지
	@RequestMapping(value = "/rc_rev03", method = RequestMethod.GET)
	public String rcRev03(Product product, Model model) {
		model.addAttribute("product",product);
		model.addAttribute("productDetailList", productService.viewProductDetail(product.getpName(), product.getpDeparture()));		
		return "website/rc_rev03";
	}
	
	//예약 - 예약정보 최종 확인 및 결제 페이지
	@RequestMapping(value = "/rc_rev04")
	public String rcRev04(@ModelAttribute Reservation reservation,int pNo, Model model) {
		int pdHigh = productService.getProductPrice(reservation, pNo);
		reservation.setPdHigh(pdHigh);
		model.addAttribute("reservation",reservation);
		return "website/rc_rev04";
	}
	
	@RequestMapping(value = "/rc_rev05")
	public String reservate(@ModelAttribute Reservation reservation, Model model) {	
		reservationService.doReservation(reservation);
		model.addAttribute("message", "예약이 완료되었습니다.");
		return "website/rc_rev05";
	}

}
