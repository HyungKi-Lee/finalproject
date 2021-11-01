package xyz.itwill.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.ReviewDAO;
import xyz.itwill.dto.Review;
import xyz.itwill.service.ReviewService;
import xyz.itwill.util.SearchCriteria;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public List<Review> list(SearchCriteria scri) throws Exception {
		return reviewDAO.list(scri);
	}

	@Override
	public Review read(int rno) throws Exception {
		reviewDAO.rHit(rno);
		return reviewDAO.read(rno);
	}

	@Override
	public void write(Review review) throws Exception {
		reviewDAO.write(review);
		
	}

	@Override
	public void update(Review review) throws Exception {
		reviewDAO.update(review);
		
	}

	@Override
	public void delete(int rno) throws Exception {
		reviewDAO.delete(rno);
		
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return reviewDAO.listCount(scri);
	}

	@Override
	public List<Review> getReviewListById(String id) {
		return reviewDAO.selectReviewListById(id);
	}

	@Override
	public int getMyReviewCount(String id) {
		return reviewDAO.selectMyReviewCount(id);
	}

	@Override
	public List<Review> getMyReviewList(Map<String, Object> map) {
		return reviewDAO.selectMyReviewList(map);
	}

	

}
