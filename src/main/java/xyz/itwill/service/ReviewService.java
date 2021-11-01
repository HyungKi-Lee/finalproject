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
	
	/////////////////////관리자 페이지/////////////////////
	List<Review> getReviewListById(String id); //나의 리뷰목록
	int getMyReviewCount(String id); //나의 리뷰건수
	List<Review> getMyReviewList(Map<String, Object> map); //나의 리뷰목록
}
