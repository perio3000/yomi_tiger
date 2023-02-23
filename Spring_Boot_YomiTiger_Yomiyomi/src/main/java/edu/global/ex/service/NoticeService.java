package edu.global.ex.service;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.EventVO;

import java.util.List;

public interface NoticeService {

/*    public List<BoardVO> getList();*/
    BoardVO read(int id);

    //paging
    int getTotal(Criteria criteria);

    List<BoardVO> getList(Criteria criteria);
    BoardVO read_prev(int id);
    BoardVO read_next(int id);

    
    int getEventListCount(Criteria criteria);
    List<EventVO> getEventList(Criteria criteria);
    
    List<BoardVO> getCenterList();

    List<BoardVO> getFAQ(Criteria criteria);
    int getTotalFAQ(Criteria criteria);
}
