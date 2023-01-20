package edu.global.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.LoginMapper;
import edu.global.ex.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public MemberVO getUser(String username) {
		log.info("getUser()..");
		
		return loginMapper.getUser(username);
	}

	@Override
	public int idCheck(String username) {
		log.info("idCheck()..");
		
		return loginMapper.idCheck(username);
	}
	
	

}
