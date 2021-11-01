package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Reservation;
import xyz.itwill.util.Paging;

public interface ReservationService {
	List<Reservation> searchAllReservation();
	int doReservation(Reservation reservation);
	Reservation getRsvnDetail(int rNo); //예약 상세내역
	int modifyRsvnCancel(int rNo); //예약 취소
	
	/////////////////////마이페이지/////////////////////
	List<Reservation> getRsvnListById(String id); //나의 예약목록(취소 미포함)
	int getMyRsvnCount(String id); //나의 예약건수(취소 포함)
	List<Reservation> getMyRsvnList(Map<String, Object> map); //나의 예약목록(취소 포함)	
	
	/////////////////////관리자 페이지/////////////////////
	//오늘예약
	int getTodayRsvnCount();
	List<Reservation> getTodayRsvnList();
	//검색기능 X
	int getRsvnCount();
	List<Reservation> getRsvnList(Paging paging);
	//검색기능 
	int getSearchRsvnCount(Map<String, Object> map);
	List<Reservation> getSearchRsvnList(Map<String, Object> map);
	
}
