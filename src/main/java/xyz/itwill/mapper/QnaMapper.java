package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Qna;

public interface QnaMapper {

	
	
	
	
	
	
	
	/////////////////////마이페이지/////////////////////
	List<Qna> selectQnaListById(String id); //나의 문의목록
	int selectMyQnaCount(String id); //나의 문의건수
	List<Qna> selectMyQnaList(Map<String, Object> map); //나의 문의목록

	/////////////////////관리자 페이지/////////////////////
	//오늘예약
	int selectTodayQnaCount();
	List<Qna> selectTodayQnaList();
	//검색기능 
	int selectSearchQnaCount(Map<String, Object> map);
	List<Qna> selectSearchQnaList(Map<String, Object> map);
}
