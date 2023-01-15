package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.MemberVO;

@Mapper
public interface LoginMapper {
	
	MemberVO getUser(String username);
}
