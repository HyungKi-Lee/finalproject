package xyz.itwill.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.QnaDAO;
import xyz.itwill.dto.Qna;
import xyz.itwill.service.QnaService;
import xyz.itwill.util.Criteria;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO dao;
	
	@Override
	public List<Qna> qlist(Criteria cri) throws Exception {
		return dao.qlist(cri);
	}

	
	@Override
	public Qna qread(int qno) throws Exception {
		 dao.qHit(qno);
		return dao.qread(qno);
	}

	@Override
	public void qwrite(Qna qna) throws Exception {
		dao.qwrite(qna);		
	}

	@Override
	public void qupdate(Qna qna) throws Exception {
		dao.qupdate(qna);		
	}

	@Override
	public void qdelete(int qno) throws Exception {
		dao.qdelete(qno);		
	}

	@Override
	public int qlistCount() throws Exception {
		return dao.qlistCount();
	}
	
	
	/////////////////////마이페이지/////////////////////
	@Override
	public List<Qna> getQnaListById(String id) {
		return dao.selectQnaListById(id);
	}


	@Override
	public int getMyQnaCount(String id) {
		return dao.selectMyQnaCount(id);
	}


	@Override
	public List<Qna> getMyQnaList(Map<String, Object> map) {
		return dao.selectMyQnaList(map);
	}

	/////////////////////관리자 페이지/////////////////////
	@Override
	public int getTodayQnaCount() {
		return dao.selectTodayQnaCount();
	}


	@Override
	public List<Qna> getTodayQnaList() {
		return dao.selectTodayQnaList();
	}


	@Override
	public int getSearchQnaCount(Map<String, Object> map) {
		return dao.selectSearchQnaCount(map);
	}


	@Override
	public List<Qna> getSearchQnaList(Map<String, Object> map) {
		return dao.selectSearchQnaList(map);
	}


}
