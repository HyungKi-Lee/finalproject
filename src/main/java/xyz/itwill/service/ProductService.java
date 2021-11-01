package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Product;
import xyz.itwill.dto.Reservation;

public interface ProductService {
	public List<Product> viewAllProduct();
	public List<Product> viewProductDetail(String pName, String pDeparture);
	public int getProductPrice(Reservation reservation, int pNo);
	
	int getProductCount(String search);
	Product getProduct(int num);
	List<Product> getProductList(Map<String, Object> map);
	
/////////////////////관리자 페이지/////////////////////
	Product getProductDetail(int pNo);
	int removeProduct(int pNo);
	int getTotalProductCount();
	List<Product> getTotalProductList();
	int getSearchProductCount(Map<String, Object> map);
	List<Product> getSearchProductList(Map<String, Object> map);
}
