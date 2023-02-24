package edu.global.ex.vo;


import lombok.*;

import java.sql.Date;
import java.util.List;

/*
* 이름           널?       유형
------------ -------- --------------
ID     NOT NULL NUMBER(30)
TITLE        NOT NULL VARCHAR2(100)
CONTENT      NOT NULL VARCHAR2(3000)
WRITTEN_DATE NOT NULL DATE
HIT                   NUMBER(30)
USER_ID      NOT NULL NUMBER(30)
BOARD_NUMBER NOT NULL NUMBER(30)
*
* */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BoardVO {
    private int id;
    private String title;
    private String content;
    private Date written_date;
    private int hit;
    private int user_id;
    private int board_number;
    private String board_name;
    private int reply_group;
    private int item_id;
    private String thumbnail;
    private String name;
    private String username;
    private Long order_id;


    private List<BoardCategoryVO> boardCategoryList;
    private List<MemberVO> userList;



}
