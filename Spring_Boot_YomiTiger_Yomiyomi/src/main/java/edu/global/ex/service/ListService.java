package edu.global.ex.service;

import java.util.List;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.ItemVO;

public interface ListService {
	
	int insertBookList(ItemVO itemVO);
	
	//신상품 리스트
	int getNewProductListCount(Criteria criteria);
	public List<ItemVO> getNewProductList(Criteria criteria);
	
	//베스트 리스트
	int getBestProductListCount(Criteria criteria);
	public List<ItemVO> getBestProductList(Criteria criteria);
	
	//all 리스트
	int getAllProductListCount(Criteria criteria);
	public List<ItemVO> getAllProductList(Criteria criteria);
	
	//이벤트 리스트
	int getEventProductListCount(Criteria criteria);
	public List<ItemVO> getEventProductList(Criteria criteria);
	
	//픽 리스트
	int getPicksProductListCount(Criteria criteria);
	public List<ItemVO> getPicksProductList(Criteria criteria);
	
	//국내 리스트
	int getNatioProductListCount(Criteria criteria);
	public List<ItemVO> getNatioProductList(Criteria criteria);
	
	//해외 리스트
	int getInterProductListCount(Criteria criteria);
	public List<ItemVO> getInterProductList(Criteria criteria);
	
	//ebook 리스트
	int getEbookProductListCount(Criteria criteria);
	public List<ItemVO> getEbookProductList(Criteria criteria);
	
	//디테일
	ItemVO getProductDetail(ItemVO itemVO);
	
	//장바구니 담기
	void cartInsert(CartVO cartVO);
	
	//장바구니 리스트
	public List<ItemVO> getCartList(String username);
	public ItemVO getCartListSS(String item_id);
	
	//로그인시 장바구니 저장
	int insertCartSS(String username, String item_id, int amount);

	//장바구니 선택 삭제
	int cartDelCh(String username, String item_id);
	
	//장바구니 전체 삭제
	int cartDelAll(String username);
	
	//장바구니 수량 변경
	int updateAmount(CartVO cartVO);
	
	//pay페이지 목록
	public List<ItemVO> getOrderList(String username, String[] item_id);
	public List<ItemVO> getOrderListNotMember(String[] item_id);
}
