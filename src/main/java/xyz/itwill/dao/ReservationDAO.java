package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Reservation;
import xyz.itwill.util.Paging;

public interface ReservationDAO {
	List<Reservation> selectAllReservationList();
	int insertReservation(Reservation reservation);
	Reservation selectRsvnDetail(int rNo); //예약 상세내역
	int updateRsvnCancel(int rNo); //예약 취소
	
	
	/////////////////////마이페이지/////////////////////
	List<Reservation> selectRsvnListById(String id); //나의 예약목록(취소 미포함)
	int selectMyRsvnCount(String id); //나의 예약건수(취소 포함)
	List<Reservation> selectMyRsvnList(Map<String, Object> map); //나의 예약목록(취소 포함)
	
	/////////////////////관리자 페이지/////////////////////
	//오늘예약
	int selectTodayRsvnCount();
	List<Reservation> selectTodayRsvnList();
	//검색기능 X
	int selectRsvnCount();
	List<Reservation> selectRsvnList(Paging paging);
	//검색기능 
	int selectSearchRsvnCount(Map<String, Object> map);
	List<Reservation> selectSearchRsvnList(Map<String, Object> map);
}
