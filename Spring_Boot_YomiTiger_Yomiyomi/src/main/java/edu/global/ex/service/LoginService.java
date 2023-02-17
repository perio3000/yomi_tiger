package edu.global.ex.service;

import java.util.List;

import edu.global.ex.vo.MemberVO;

public interface LoginService {
	
	MemberVO getUser(String username);
	
	int idCheck(String username);
	
	int signupMember(MemberVO memberVO);
	
	void signupSocialLogin(MemberVO memberVO);
	
	int findMember(String username);
	
	List<MemberVO> findId(MemberVO memberVO);
	
}
