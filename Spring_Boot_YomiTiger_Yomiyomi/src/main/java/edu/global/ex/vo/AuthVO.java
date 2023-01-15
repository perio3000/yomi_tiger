package edu.global.ex.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
이름              널?       유형            
--------- -------- ------------- 
ID        NOT NULL NUMBER(30)    
AUTHORITY          VARCHAR2(100) 
USER_ID   NOT NULL NUMBER(30) 
*/

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AuthVO {
	
	private int id;
	private String authority;
	private int user_id;

}
