package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.MemberVO;

@Mapper
public interface LoginMapper {
	
	MemberVO getUser(String username);
	
	int idCheck(String username);
	
	int signupMember(MemberVO memberVO);
	
	int signupSocialLogin(MemberVO memberVO);
	
	List<MemberVO> findId(MemberVO memberVO);
}
