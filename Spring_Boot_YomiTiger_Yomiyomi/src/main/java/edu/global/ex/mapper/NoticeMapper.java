package edu.global.ex.mapper;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.EventVO;
import edu.global.ex.vo.ImageVO;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {
    
    BoardVO read(int id);

    BoardVO read_prev(int id);
    BoardVO read_next(int id);

    int getTotalCount(Criteria criteria);
    List<BoardVO> getListWithPaging(Criteria criteria);

    int getEventListCount(Criteria criteria);
    List<EventVO> getEventList(Criteria criteria);
    
    List<BoardVO> getCenterList();
    
    List<BoardVO> getFAQ(Criteria criteria);
    int getTotalFAQ(Criteria criteria);
    
    List<EventVO> getEventDetail(int id);
    
    int insertQnaBoard(BoardVO boardVO);
    int insertQnaImage(ImageVO imageVO);
}
