package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Review;
import xyz.itwill.mapper.ReviewMapper;
import xyz.itwill.util.SearchCriteria;

@Repository
public class ReviewDAOImpl implements ReviewDAO  {

	@Autowired
	private SqlSession sqlSession;
	private static String namespace = "xyz.itwill.mapper.ReviewMapper";
	
	@Override
	public List<Review> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList(namespace + ".listPage", scri);
	}
	@Override
	public Review read(int rno) throws Exception {
		return sqlSession.selectOne(namespace + ".read", rno);
	}
	@Override
	public void write(Review review) throws Exception {
		sqlSession.insert(namespace + ".insert", review);
		
	}
	@Override
	public void update(Review review) throws Exception {
		sqlSession.update(namespace + ".update",  review);
		
	}
	@Override
	public void delete(int rno) throws Exception {
		sqlSession.delete(namespace + ".delete", rno);
		
	}
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne(namespace + ".listCount" ,scri);
	}
	@Override
	public void rHit(int rno) throws Exception {
		sqlSession.update(namespace + ".rHit" ,rno);
		
	}
	
	/////////////////////마이페이지/////////////////////
	@Override
	public List<Review> selectReviewListById(String id) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewListById(id);
	}
	@Override
	public int selectMyReviewCount(String id) {
		return sqlSession.getMapper(ReviewMapper.class).selectMyReviewCount(id);
	}
	@Override
	public List<Review> selectMyReviewList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectMyReviewList(map);
	}
	

}
