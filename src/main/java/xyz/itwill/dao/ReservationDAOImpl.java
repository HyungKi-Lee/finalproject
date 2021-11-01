package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Reservation;
import xyz.itwill.mapper.ReservationMapper;
import xyz.itwill.util.Paging;

@Repository
public class ReservationDAOImpl implements ReservationDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<Reservation> selectAllReservationList() {
		return sqlSession.getMapper(ReservationMapper.class).selectAllReservationList();
	}
	
	@Override
	public int insertReservation(Reservation reservation) {
		return sqlSession.getMapper(ReservationMapper.class).insertReservation(reservation);
	}

	@Override
	public Reservation selectRsvnDetail(int rNo) {
		return sqlSession.getMapper(ReservationMapper.class).selectRsvnDetail(rNo);
	}
	
	@Override
	public int updateRsvnCancel(int rNo) {
		return sqlSession.getMapper(ReservationMapper.class).updateRsvnCancel(rNo);
	}

	/////////////////////마이페이지/////////////////////
	@Override
	public List<Reservation> selectRsvnListById(String id) {
		return sqlSession.getMapper(ReservationMapper.class).selectRsvnListById(id);
	}	

	@Override
	public int selectMyRsvnCount(String id) {
		return sqlSession.getMapper(ReservationMapper.class).selectMyRsvnCount(id);
	}

	@Override
	public List<Reservation> selectMyRsvnList(Map<String, Object> map) {
		return sqlSession.getMapper(ReservationMapper.class).selectMyRsvnList(map);
	}
	
	
	/////////////////////관리자 페이지/////////////////////
	@Override
	public int selectTodayRsvnCount() {
		return sqlSession.getMapper(ReservationMapper.class).selectTodayRsvnCount();
	}

	@Override
	public List<Reservation> selectTodayRsvnList() {
		return sqlSession.getMapper(ReservationMapper.class).selectTodayRsvnList();
	}

	@Override
	public int selectRsvnCount() {
		return sqlSession.getMapper(ReservationMapper.class).selectRsvnCount();
	}

	@Override
	public List<Reservation> selectRsvnList(Paging paging) {
		return sqlSession.getMapper(ReservationMapper.class).selectRsvnList(paging);
	}

	@Override
	public int selectSearchRsvnCount(Map<String, Object> map) {
		return sqlSession.getMapper(ReservationMapper.class).selectSearchRsvnCount(map);
	}

	@Override
	public List<Reservation> selectSearchRsvnList(Map<String, Object> map) {
		return sqlSession.getMapper(ReservationMapper.class).selectSearchRsvnList(map);
	}

	

	



}
