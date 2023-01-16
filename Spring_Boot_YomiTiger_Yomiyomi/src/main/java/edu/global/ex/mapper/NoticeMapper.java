package edu.global.ex.mapper;

import edu.global.ex.vo.BoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {
    List<BoardVO> getList();
    BoardVO read(int id);


}
