package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Qna;
import xyz.itwill.util.Criteria;

public interface QnaDAO {
	public List<Qna> qlist(Criteria cri) throws Exception; 
	public Qna qread(int qno) throws Exception;
	public void qwrite(Qna qna) throws Exception;
	public void qupdate(Qna qna) throws Exception;
	public void qdelete(int qno) throws Exception;
	public int qlistCount() throws Exception;
	public void qHit(int qno) throws Exception;
	
	/////////////////////마이페이지/////////////////////
	List<Qna> selectQnaListById(String id); //나의 문의목록
	int selectMyQnaCount(String id); //나의 문의건수
	List<Qna> selectMyQnaList(Map<String, Object> map); //나의 문의목록

	/////////////////////관리자 페이지/////////////////////
	//오늘문의
	int selectTodayQnaCount();
	List<Qna> selectTodayQnaList();
	//검색기능 
	int selectSearchQnaCount(Map<String, Object> map);
	List<Qna> selectSearchQnaList(Map<String, Object> map);
}
