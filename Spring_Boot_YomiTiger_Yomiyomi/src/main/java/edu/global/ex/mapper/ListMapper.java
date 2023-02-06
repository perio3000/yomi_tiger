package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.ItemVO;

@Mapper
public interface ListMapper {
	
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
	
	//디테일
	ItemVO getProductDetail(ItemVO itemVO);
}
