package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Reservation;
import xyz.itwill.util.Paging;

public interface ReservationDAO {
	List<Reservation> selectAllReservationList();
	int insertReservation(Reservation reservation);
	Reservation selectRsvnDetail(int rNo); //���� �󼼳���
	int updateRsvnCancel(int rNo); //���� ���
	
	
	/////////////////////����������/////////////////////
	List<Reservation> selectRsvnListById(String id); //���� ������(��� ������)
	int selectMyRsvnCount(String id); //���� ����Ǽ�(��� ����)
	List<Reservation> selectMyRsvnList(Map<String, Object> map); //���� ������(��� ����)
	
	/////////////////////������ ������/////////////////////
	//���ÿ���
	int selectTodayRsvnCount();
	List<Reservation> selectTodayRsvnList();
	//�˻���� X
	int selectRsvnCount();
	List<Reservation> selectRsvnList(Paging paging);
	//�˻���� 
	int selectSearchRsvnCount(Map<String, Object> map);
	List<Reservation> selectSearchRsvnList(Map<String, Object> map);
}
