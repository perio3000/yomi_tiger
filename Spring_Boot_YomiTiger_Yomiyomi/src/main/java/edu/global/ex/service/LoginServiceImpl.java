package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.global.ex.mapper.LoginMapper;
import edu.global.ex.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginMapper loginMapper;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
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
	
	@Transactional
	@Override
	public int signupMember(MemberVO memberVO) {
		log.info("signupMember()..");
		
		String encodedPassword = passwordEncoder.encode(memberVO.getPassword());
		memberVO.setPassword(encodedPassword);
		
		return loginMapper.signupMember(memberVO);
	}

	@Transactional
	@Override
	public void signupSocialLogin(MemberVO memberVO) {
		log.info("signupSocialLogin()..");
		
		String encodedPassword = passwordEncoder.encode(memberVO.getPassword());
		memberVO.setPassword(encodedPassword);
		
		loginMapper.signupSocialLogin(memberVO);
	}
	@Transactional
	@Override
	public int findMember(String username) {
		log.info("findMember()..");
		
		int rn = 0;
		
		if(loginMapper.getUser(username) == null) {
			rn = 0;
		}else {
			rn = 1;
		}
		System.out.println("findMember : " + rn);
		
		return rn;
	}

	@Override
	public List<MemberVO> findId(MemberVO memberVO) {
		log.info("findId()..");
		
		return loginMapper.findId(memberVO);
	}
	

}
