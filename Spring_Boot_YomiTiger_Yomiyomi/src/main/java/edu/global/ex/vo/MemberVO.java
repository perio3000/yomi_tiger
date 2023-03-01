package edu.global.ex.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
이름                널?       유형            
---------- -------- ------------- 
ID         NOT NULL NUMBER(30)    
PASSWORD   NOT NULL VARCHAR2(100) 
USERNAME   NOT NULL VARCHAR2(100) 
NAME       NOT NULL VARCHAR2(100) 
TEL                 VARCHAR2(20)  
POSTNUMBER          VARCHAR2(10)  
CITY                VARCHAR2(100) 
STREET              VARCHAR2(100) 
LOCATION            VARCHAR2(200) 
POINT               NUMBER(30)    
LOGINTIME           DATE          
ENABLED             NUMBER(1)     
ACCOUNT             VARCHAR2(100) 
BANK                VARCHAR2(100) 
*/

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberVO {
	
	private int id;
	private String password;
	private String username;
	private String name;
	private String tel;
	private String postnumber;
	private String city;
	private String street;
	private String location;
	private int point;
	private Date logintime;
	private int enabled;
	private String account;
	private String bank;
	private String veriNum;
	private String encodedCode;
	
	private List<AuthVO> authList;
	private List<OrderVO> orderList;
}
