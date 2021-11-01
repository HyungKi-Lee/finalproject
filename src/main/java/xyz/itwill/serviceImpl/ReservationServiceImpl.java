package xyz.itwill.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.ReservationDAO;
import xyz.itwill.dto.Reservation;
import xyz.itwill.service.ReservationService;
import xyz.itwill.util.Paging;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	ReservationDAO reservationDAO;
	
	@Override
	public List<Reservation> searchAllReservation() {
		return reservationDAO.selectAllReservationList();
	}
	
	@Override
	public int doReservation(Reservation reservation) {
		return reservationDAO.insertReservation(reservation);
	}
	
	@Override
	public Reservation getRsvnDetail(int rNo) {
		return reservationDAO.selectRsvnDetail(rNo);
	}
	
	@Override
	public int modifyRsvnCancel(int rNo) {
		return reservationDAO.updateRsvnCancel(rNo);
	}
	
	/////////////////////마이페이지/////////////////////
	@Override
	public List<Reservation> getRsvnListById(String id) {
		return reservationDAO.selectRsvnListById(id);
	}
	
	@Override
	public int getMyRsvnCount(String id) {
		return reservationDAO.selectMyRsvnCount(id);
	}

	@Override
	public List<Reservation> getMyRsvnList(Map<String, Object> map) {
		return reservationDAO.selectMyRsvnList(map);
	}
	
	
	/////////////////////관리자 페이지/////////////////////
	@Override
	public int getTodayRsvnCount() {
		return reservationDAO.selectTodayRsvnCount();
	}

	@Override
	public List<Reservation> getTodayRsvnList() {
		return reservationDAO.selectTodayRsvnList();
	}

	@Override
	public int getRsvnCount() {
		return reservationDAO.selectRsvnCount();
	}

	@Override
	public List<Reservation> getRsvnList(Paging paging) {
		return reservationDAO.selectRsvnList(paging);
	}

	@Override
	public int getSearchRsvnCount(Map<String, Object> map) {
		return reservationDAO.selectSearchRsvnCount(map);
	}

	@Override
	public List<Reservation> getSearchRsvnList(Map<String, Object> map) {
		return reservationDAO.selectSearchRsvnList(map);
	}

	

	


}
