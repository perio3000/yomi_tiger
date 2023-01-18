package edu.global.ex.service;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;

import java.util.List;

public interface NoticeService {
    public List<BoardVO> getList();
    BoardVO read(int id);

    //paging
    int getTotal();
    List<BoardVO> getList(Criteria criteria);


}
