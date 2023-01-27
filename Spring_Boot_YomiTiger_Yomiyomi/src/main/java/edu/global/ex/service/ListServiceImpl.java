package edu.global.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.ListMapper;
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
	
	
}
