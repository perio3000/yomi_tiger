package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.global.ex.mapper.ListMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.vo.CartVO;
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

	@Override
	public int getBestProductListCount(Criteria criteria) {
		log.info("getBestProductListCount()..");
		
		return listMapper.getBestProductListCount(criteria);
	}

	@Override
	public List<ItemVO> getBestProductList(Criteria criteria) {
		log.info("getBestProductList()..");
		
		return listMapper.getBestProductList(criteria);
	}

	@Override
	public int getAllProductListCount(Criteria criteria) {
		log.info("getAllProductListCount()..");
		
		return listMapper.getAllProductListCount(criteria);
	}

	@Override
	public List<ItemVO> getAllProductList(Criteria criteria) {
		log.info("getAllProductList()..");
		
		return listMapper.getAllProductList(criteria);
	}

	@Override
	public ItemVO getProductDetail(ItemVO itemVO) {
		log.info("getProductDetail()..");
		
		return listMapper.getProductDetail(itemVO);
	}

	@Transactional
	@Override
	public void cartInsert(CartVO cartVO) {
		log.info("cartInsert()..");
		
		listMapper.cartDeleteBeforeInsert(cartVO);
		listMapper.cartInsert(cartVO);
	}

	@Override
	public List<ItemVO> getCartList(String username) {
		log.info("getCartList()..");
		
		return listMapper.getCartList(username);
	}
	
	
}
