package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Qna;
import xyz.itwill.mapper.QnaMapper;
import xyz.itwill.util.Criteria;

@Repository
public class QnaDAOImpl implements QnaDAO  {

	@Autowired
	private SqlSession sqlSession;
	private static String namespace = "xyz.itwill.mapper.QnaMapper";
	
	@Override
	public List<Qna> qlist(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".qlistPage", cri);
	}
	@Override
	public Qna qread(int qno) throws Exception {
		return sqlSession.selectOne(namespace + ".qread", qno);
	}
	@Override
	public void qwrite(Qna qna) throws Exception {
		sqlSession.insert(namespace + ".qinsert", qna);
		
	}
	@Override
	public void qupdate(Qna qna) throws Exception {
		sqlSession.update(namespace + ".qupdate", qna);
		
	}
	@Override
	public void qdelete(int qno) throws Exception {
		sqlSession.delete(namespace + ".qdelete", qno);
		
	}
	@Override
	public int qlistCount() throws Exception {
		return sqlSession.selectOne(namespace + ".qlistCount");
	}
	@Override
	public void qHit(int qno) throws Exception {
		sqlSession.update(namespace + ".qHit" ,qno);
		
	}
	
	
	
	
	/////////////////////마이페이지/////////////////////
	@Override
	public List<Qna> selectQnaListById(String id) {
		return sqlSession.getMapper(QnaMapper.class).selectQnaListById(id);
	}
	@Override
	public int selectMyQnaCount(String id) {
		return sqlSession.getMapper(QnaMapper.class).selectMyQnaCount(id);
	}
	@Override
	public List<Qna> selectMyQnaList(Map<String, Object> map) {
		return sqlSession.getMapper(QnaMapper.class).selectMyQnaList(map);
	}
	
	/////////////////////관리자 페이지/////////////////////
	@Override
	public int selectTodayQnaCount() {
		return sqlSession.getMapper(QnaMapper.class).selectTodayQnaCount();
	}
	@Override
	public List<Qna> selectTodayQnaList() {
		return sqlSession.getMapper(QnaMapper.class).selectTodayQnaList();
	}
	@Override
	public int selectSearchQnaCount(Map<String, Object> map) {
		return sqlSession.getMapper(QnaMapper.class).selectSearchQnaCount(map);
	}
	@Override
	public List<Qna> selectSearchQnaList(Map<String, Object> map) {
		return sqlSession.getMapper(QnaMapper.class).selectSearchQnaList(map);
	}
}
