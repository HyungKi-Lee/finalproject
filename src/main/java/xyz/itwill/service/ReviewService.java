package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Review;
import xyz.itwill.util.SearchCriteria;

public interface ReviewService {
	public List<Review> list(SearchCriteria scri) throws Exception; 
	public Review read(int rno) throws Exception;
	public void write(Review review) throws Exception;
	public void update(Review review) throws Exception;
	public void delete(int rno) throws Exception;
	public int listCount(SearchCriteria scri) throws Exception;
	
	/////////////////////������ ������/////////////////////
	List<Review> getReviewListById(String id); //���� ������
	int getMyReviewCount(String id); //���� ����Ǽ�
	List<Review> getMyReviewList(Map<String, Object> map); //���� ������
}
