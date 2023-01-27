package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.ItemVO;

@Mapper
public interface ListMapper {
	
	int insertBookList(ItemVO itemVO);
}
