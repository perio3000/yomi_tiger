package edu.global.ex.mapper;

import edu.global.ex.vo.BoardVO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class NoticeMapperTest {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Test
	void boardTest() {

		List<BoardVO> boardList = noticeMapper.getList();
		
		System.out.println(boardList);
		
	}

}
