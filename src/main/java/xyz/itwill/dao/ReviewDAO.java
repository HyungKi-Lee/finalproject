package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Review;
import xyz.itwill.util.SearchCriteria;

public interface ReviewDAO {
	public List<Review> list(SearchCriteria scri) throws Exception; 
	public Review read(int rno) throws Exception;
	public void write(Review review) throws Exception;
	public void update(Review review) throws Exception;
	public void delete(int rno) throws Exception;
	public int listCount(SearchCriteria scri) throws Exception;
	public void rHit(int rno) throws Exception;
	/////////////////////����������/////////////////////
	List<Review> selectReviewListById(String id); //���� ������
	int selectMyReviewCount(String id); //���� ����Ǽ�
	List<Review> selectMyReviewList(Map<String, Object> map); //���� ������
}