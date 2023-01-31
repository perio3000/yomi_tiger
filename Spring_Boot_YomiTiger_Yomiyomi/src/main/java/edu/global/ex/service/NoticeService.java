package edu.global.ex.service;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;

import java.util.List;

public interface NoticeService {
    public List<BoardVO> getList();
    BoardVO read(int id);

    public List<BoardVO> getFAQ();


    //paging
    int getTotal();
    List<BoardVO> getList(Criteria criteria);
    BoardVO read_prev(int id);
    BoardVO read_next(int id);



}
