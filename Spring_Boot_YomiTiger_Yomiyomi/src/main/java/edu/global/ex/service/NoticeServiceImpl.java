package edu.global.ex.service;

import edu.global.ex.mapper.NoticeMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.EventVO;
import edu.global.ex.vo.ImageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;


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

    @Override
    public int getTotal(Criteria criteria) {
        log.info("SERVICE : getTotal(Criteria) ..");
        return noticeMapper.getTotalCount(criteria);
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
	public int getEventListCount(Criteria criteria) {
		log.info("SERVICE : getEventListCount()..");
		
		return noticeMapper.getEventListCount(criteria);
	}

	@Override
	public List<EventVO> getEventList(Criteria criteria) {
		log.info("SERVICE : getEventList()..");
		
		return noticeMapper.getEventList(criteria);
	}
	@Override
	public List<BoardVO> getCenterList() {
		log.info("SERVICE : getCenterList()..");
		
		return noticeMapper.getCenterList();
	}

	@Override
	public List<BoardVO> getFAQ(Criteria criteria) {
		log.info("SERVICE : getCenterList()..");
		
		return noticeMapper.getFAQ(criteria);
	}

	@Override
	public int getTotalFAQ(Criteria criteria) {
		log.info("SERVICE : getCenterList()..");
		
		return noticeMapper.getTotalFAQ(criteria);
	}

	@Override
	public List<EventVO> getEventDetail(int id) {
		log.info("SERVICE : getCenterList()..");
		
		return noticeMapper.getEventDetail(id);
	}

	@Transactional
	@Override
	public boolean sendQna(BoardVO boardVO, MultipartFile file) throws IllegalStateException, IOException {
		log.info("SERVICE : sendQna()..");
		
		int boardResult = noticeMapper.insertQnaBoard(boardVO);
		
		String projectPath = System.getProperty("user.dir") + "/src/main/resources/static/files";
		UUID uuid = UUID.randomUUID();
		String fileName = uuid + "_" + file.getOriginalFilename();
		File saveFile = new File(projectPath, fileName);
		file.transferTo(saveFile);
		 
		ImageVO imageVO = new ImageVO();
		
		imageVO.setFile_name(fileName);
		imageVO.setFile_path("/files/" + fileName);
		
		int imageResult = noticeMapper.insertQnaImage(imageVO);
		
		return boardResult == 1 && imageResult == 1;
	}

}
