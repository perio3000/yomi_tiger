package edu.global.ex.service;

import edu.global.ex.mapper.NoticeMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Slf4j
@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    private NoticeMapper noticeMapper;
/*    @Override
    public List<BoardVO> getList(){
        log.info("SERVICE : getList()..");

        return noticeMapper.getList();
    }*/

    public BoardVO read(int id){
        log.info("read()..");
        return noticeMapper.read(id);
    }

    @Override
    public List<BoardVO> getFAQ() {
        return noticeMapper.getFAQ();
    }

    @Override
    public BoardVO read_prev(int id) {
        log.info("read_prev()..");
        return noticeMapper.read_prev(id);

    }

    @Override
    public int getTotal(Criteria criteria) {
        log.info("getTotal() ..");
        return noticeMapper.getTotalCount(criteria);
    }

    @Override
    public List<BoardVO> getList(Criteria criteria) {
        log.info("getList(Criteria criteria) ..");
        return noticeMapper.getListWithPaging(criteria);
    }

    @Override
    public BoardVO read_next(int id) {
        log.info("read_nexxt()..");
        return noticeMapper.read_next(id);

    }

    @Override
    public List<BoardVO> getCategory(Criteria criteria, int categoryNo) {
        log.info("SERVICE : getCategoryNo()..");
        return noticeMapper.getCategorys(criteria, categoryNo);

    }

    @Override
    public List<BoardVO> category(int category) {
        log.info("SERVICE : category()..");
        return noticeMapper.category(category);
    }


}
