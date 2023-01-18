package edu.global.ex.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.LoginMapper;
import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.UserDetailsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		log.warn("Load User By MemberVO Number: " + username);
		MemberVO vo = loginMapper.getUser(username);
		
		log.warn("queried by MemberVO mapper: " + vo);
		return vo == null ? null : new UserDetailsVO(vo);
		
	}
}
