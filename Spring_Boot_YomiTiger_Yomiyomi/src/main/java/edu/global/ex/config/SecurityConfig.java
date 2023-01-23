package edu.global.ex.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import edu.global.ex.security.CustomUserDetailsService;

//시큐리티 설정 클래스
@Configuration //이 클래스가 설정파일인 것을 알려줌, @Component(부모)+설정
@EnableWebSecurity //스프링 시큐리티 필터가 스프링 필터체인에 등록됨(12개의 필터)
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true) // Controller 에서 권한 설정을 위한 어노테이션!
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired //개발자가 커스터마이징
	private CustomUserDetailsService customUserDetailsService;
	
	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception{
//		http.csrf().disable(); //CSRF 설정을 해제(초기 개발시에만 하는게 좋다)
		http.csrf().disable().cors();
		
//		로그인 폼을 커스터마이징
		http.formLogin()
			.loginPage("/login")
			.and()
			.logout()
			.logoutUrl("/logout")
			.logoutSuccessUrl("/login?logout");
		
		http.authorizeHttpRequests()
			.antMatchers("/mypage/**").hasAnyRole("MEMBER", "ADMIN")
			.antMatchers("/**").permitAll(); //그 외 경로는 모두 허용
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
	
		auth.userDetailsService(customUserDetailsService)
			.passwordEncoder(new BCryptPasswordEncoder());
	}
	
   @Bean
   public PasswordEncoder getPasswordEncoder() {
      return new BCryptPasswordEncoder();
   }
}
