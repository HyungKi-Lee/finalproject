package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Product;
import xyz.itwill.dto.Reservation;

public interface ProductDAO {
	List<Product> selectProductList();
	List<Product> selectProductDetail(String pName, String pDeparture);
	int selectProductPrice(Reservation reservation, int pNo);
	int selectProductCount(String search);
	Product selectProduct(int num);
	List<Product> selectProductList(Map<String, Object> map);
	/////////////////////관리자 페이지/////////////////////
	Product selectProductDetails(int pNo);
	int deleteProduct(int pNo);
	int selectTotalProductCount();
	List<Product> selectTotalProductList();
	int selectSearchProductCount(Map<String, Object> map);
	List<Product> selectSearchProductList(Map<String, Object> map);
}
