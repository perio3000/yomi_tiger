package edu.global.ex.service;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;

import java.util.List;

public interface NoticeService {

/*    public List<BoardVO> getList();*/
    BoardVO read(int id);

    List<BoardVO> getFAQ(Criteria criteria);


    //paging
    int getTotal(Criteria criteria);
    int getTotalFAQ(Criteria criteria);
    List<BoardVO> getList(Criteria criteria);
    BoardVO read_prev(int id);
    BoardVO read_next(int id);


    List<BoardVO> getCategory(Criteria criteria, int categoryNo);

    List<BoardVO> category(int category);
    
    int getEventListCount(Criteria criteria);
    List<BoardVO> getEventList(Criteria criteria);


}
