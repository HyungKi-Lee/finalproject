package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import xyz.itwill.dto.Product;

public interface ProductMapper {
	List<Product> selectAllProductCal();
	List<Product> selectProductDetail(@Param("pName") String pName,@Param("pDeparture") String pDeparture);
	int selectProductPrice(@Param("pdGrade") String pdGrade, @Param("pNo") int pNo);
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
