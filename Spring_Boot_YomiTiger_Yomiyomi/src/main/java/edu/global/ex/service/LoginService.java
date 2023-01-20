package edu.global.ex.service;

import edu.global.ex.vo.MemberVO;

public interface LoginService {
	
	MemberVO getUser(String username);
	
	int idCheck(String username);
}
