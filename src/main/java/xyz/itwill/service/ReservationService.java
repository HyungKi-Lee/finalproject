package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Reservation;
import xyz.itwill.util.Paging;

public interface ReservationService {
	List<Reservation> searchAllReservation();
	int doReservation(Reservation reservation);
	Reservation getRsvnDetail(int rNo); //���� �󼼳���
	int modifyRsvnCancel(int rNo); //���� ���
	
	/////////////////////����������/////////////////////
	List<Reservation> getRsvnListById(String id); //���� ������(��� ������)
	int getMyRsvnCount(String id); //���� ����Ǽ�(��� ����)
	List<Reservation> getMyRsvnList(Map<String, Object> map); //���� ������(��� ����)	
	
	/////////////////////������ ������/////////////////////
	//���ÿ���
	int getTodayRsvnCount();
	List<Reservation> getTodayRsvnList();
	//�˻���� X
	int getRsvnCount();
	List<Reservation> getRsvnList(Paging paging);
	//�˻���� 
	int getSearchRsvnCount(Map<String, Object> map);
	List<Reservation> getSearchRsvnList(Map<String, Object> map);
	
}
