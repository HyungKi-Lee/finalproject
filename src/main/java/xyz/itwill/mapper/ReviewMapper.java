package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Review;

public interface ReviewMapper {
	
	
	
	
	
	
	/////////////////////������ ������/////////////////////
	List<Review> selectReviewListById(String id); //���� ������
	int selectMyReviewCount(String id); //���� ����Ǽ�
	List<Review> selectMyReviewList(Map<String, Object> map); //���� ������
}
