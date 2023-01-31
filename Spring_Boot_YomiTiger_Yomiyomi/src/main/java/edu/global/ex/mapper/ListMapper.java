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
}
