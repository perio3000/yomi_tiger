package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.ListMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.vo.ItemVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ListServiceImpl implements ListService{
	
	@Autowired
	private ListMapper listMapper;
	
	@Override
	public int insertBookList(ItemVO itemVO) {
		log.info("insertBookList()..");
		
		return listMapper.insertBookList(itemVO);
	}

	@Override
	public int getNewProductListCount(Criteria criteria) {
		log.info("getNewProductListCount()..");

		return listMapper.getNewProductListCount(criteria);
	}

	@Override
	public List<ItemVO> getNewProductList(Criteria criteria) {
		log.info("getNewProductList()..");

		return listMapper.getNewProductList(criteria);
	}
	
	
}
