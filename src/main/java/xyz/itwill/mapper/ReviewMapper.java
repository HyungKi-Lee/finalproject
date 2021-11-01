package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Review;

public interface ReviewMapper {
	
	
	
	
	
	
	/////////////////////관리자 페이지/////////////////////
	List<Review> selectReviewListById(String id); //나의 리뷰목록
	int selectMyReviewCount(String id); //나의 리뷰건수
	List<Review> selectMyReviewList(Map<String, Object> map); //나의 리뷰목록
}
