package edu.global.ex.service;

import edu.global.ex.mapper.NoticeMapper;
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
    @Override
    public List<BoardVO> getList(){
        log.info("getList()..");

        return noticeMapper.getList();
    }

    public BoardVO read(int id){
        log.info("read()..");
        return noticeMapper.read(id);
    }
}
