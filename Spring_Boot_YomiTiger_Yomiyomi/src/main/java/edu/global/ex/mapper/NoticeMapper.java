package edu.global.ex.mapper;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {
    List<BoardVO> getList();
    BoardVO read(int id);

    BoardVO read_prev(int id);
    BoardVO read_next(int id);

    int getTotalCount(Criteria criteria);
    List<BoardVO> getListWithPaging(Criteria criteria);


    List<BoardVO> getFAQ();

    List<BoardVO> getCategorys(Criteria criteria, int categoryNo);

    List<BoardVO> category(int category);


}
