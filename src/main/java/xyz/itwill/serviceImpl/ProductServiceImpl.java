package xyz.itwill.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.ProductDAO;
import xyz.itwill.dto.Product;
import xyz.itwill.dto.Reservation;
import xyz.itwill.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public List<Product> viewAllProduct() {
		return productDAO.selectProductList();
	}

	@Override
	public List<Product> viewProductDetail(String pName, String pDeparture) {
		return productDAO.selectProductDetail(pName, pDeparture);
	}
	
	@Override
	public Product getProductDetail(int pNo) {
		return productDAO.selectProductDetails(pNo);
	}
	
	@Override
	public int removeProduct(int pNo) {
		return productDAO.deleteProduct(pNo);
	}

	@Override
	public int getTotalProductCount() {
		return productDAO.selectTotalProductCount();
	}

	@Override
	public List<Product> getTotalProductList() {
		return productDAO.selectTotalProductList();
	}

	@Override
	public int getProductPrice(Reservation reservation, int pNo) {
		return productDAO.selectProductPrice(reservation, pNo);
	}

	@Override
	public int getProductCount(String search) {
		return productDAO.selectProductCount(search);
	}

	@Override
	public Product getProduct(int num) {
		return productDAO.selectProduct(num);
	}

	@Override
	public List<Product> getProductList(Map<String, Object> map) {
		return productDAO.selectProductList(map);
	}

	@Override
	public int getSearchProductCount(Map<String, Object> map) {
		return productDAO.selectSearchProductCount(map);
	}

	@Override
	public List<Product> getSearchProductList(Map<String, Object> map) {
		return productDAO.selectSearchProductList(map);
	}


}
