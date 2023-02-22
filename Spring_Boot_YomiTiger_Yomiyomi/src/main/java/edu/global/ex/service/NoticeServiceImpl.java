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
        log.info("SERVICE : read(int id)..");
        return noticeMapper.read(id);
    }
    /*
    @Override
    public List<BoardVO> getFAQ(Criteria criteria) {
        log.info("SERVICE : getFAQ(Criteria criteria)..");

        criteria.setAmount(10);

        return noticeMapper.getFAQ(criteria);
    }
    */
    @Override
    public List<BoardVO> getFAQ(Criteria criteria) {
        log.info("SERVICE : getFAQ(Criteria criteria)..");

        criteria.setAmount(10);

/*
        return noticeMapper.getFAQ(criteria);
*/
        return noticeMapper.getFAQWithPaging(criteria);
    }




    @Override
    public int getTotal(Criteria criteria) {
        log.info("SERVICE : getTotal(Criteria) ..");
        return noticeMapper.getTotalCount(criteria);
    }

    @Override
    public int getTotalFAQ(Criteria criteria) {
        log.info("SERVICE : getTotalFAQCount(Criteria) ..");
        return noticeMapper.getTotalFAQCount(criteria);
    }

    @Override
    public List<BoardVO> getList(Criteria criteria) {

        log.info("SERVICE : getList(Criteria criteria) ..");

        criteria.setAmount(10);

        return noticeMapper.getListWithPaging(criteria);
    }

    @Override
    public BoardVO read_prev(int id) {
        log.info("SERVICE : read_prev(int id)..");
        return noticeMapper.read_prev(id);
    }
    @Override
    public BoardVO read_next(int id) {
        log.info("SERVICE : read_next(int id)..");
        return noticeMapper.read_next(id);
    }


    @Override
    public List<BoardVO> getCategory(Criteria criteria, int categoryNo) {
        log.info("SERVICE : getCategoryNo(Criteria criteria, int categoryNo)..");
        return noticeMapper.getCategorys(criteria, categoryNo);

    }
    @Override
    public List<BoardVO> category(int category) {
        log.info("SERVICE : category(int category)..");
        return noticeMapper.category(category);
    }

	@Override
	public int getEventListCount(Criteria criteria) {
		log.info("SERVICE : getEventListCount()..");
		
		return noticeMapper.getEventListCount(criteria);
	}

	@Override
	public List<BoardVO> getEventList(Criteria criteria) {
		log.info("SERVICE : getEventList()..");
		
		return noticeMapper.getEventList(criteria);
	}


}
