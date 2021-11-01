package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Product;
import xyz.itwill.dto.Reservation;
import xyz.itwill.mapper.ProductMapper;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Product> selectProductList() {
		return sqlSession.getMapper(ProductMapper.class).selectAllProductCal();
	}

	@Override
	public List<Product> selectProductDetail(String pName, String pDeparture) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductMapper.class).selectProductDetail(pName, pDeparture);
	}

	@Override
	public int selectProductPrice(Reservation reservation, int pNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductMapper.class).selectProductPrice(reservation.getPdGrade(), pNo);
	}

	@Override
	public int selectProductCount(String search) {
		return sqlSession.getMapper(ProductMapper.class).selectProductCount(search);
	}

	@Override
	public Product selectProduct(int num) {
		return sqlSession.getMapper(ProductMapper.class).selectProduct(num);
	}

	@Override
	public List<Product> selectProductList(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).selectProductList(map);
	}
	
	/////////////////////관리자 페이지/////////////////////
	@Override
	public Product selectProductDetails(int pNo) {
		return sqlSession.getMapper(ProductMapper.class).selectProductDetails(pNo);
	}
	
	@Override
	public int deleteProduct(int pNo) {
		return sqlSession.getMapper(ProductMapper.class).deleteProduct(pNo);
	}
	
	@Override
	public int selectTotalProductCount() {
		return sqlSession.getMapper(ProductMapper.class).selectTotalProductCount();
	}

	@Override
	public List<Product> selectTotalProductList() {
		return sqlSession.getMapper(ProductMapper.class).selectTotalProductList();
	}

	@Override
	public int selectSearchProductCount(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).selectSearchProductCount(map);
	}

	@Override
	public List<Product> selectSearchProductList(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).selectSearchProductList(map);
	}

	
	

}
