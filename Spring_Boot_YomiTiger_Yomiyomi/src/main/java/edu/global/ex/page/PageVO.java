package edu.global.ex.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;
@ToString
@Getter
@Setter
public class PageVO {

    private int startPage;// 화면에 보여지는 페이지 시작번호
    private int endPage;// 화면에 보여지는 끝번호
    private boolean prev, next;// 이전과 다음으로 이동 가능한 링크 표시

    private int total;// 전체 게시판 글 수
    private Criteria criteria;

    public  PageVO(Criteria criteria, int total){
        this.criteria = criteria;
        this.total = total;

        this.endPage = (int) (Math.ceil(criteria.getPageNum() / 10.0)) * 10;
        this.startPage = this.endPage - 9;

        int realEnd = (int) (Math.ceil((total * 1.0) / criteria.getAmount()));

        if (realEnd <= this.endPage){
            this.endPage = realEnd;
        }

        this.prev = this.startPage > 1;
        this.next = this.endPage < realEnd;
    }

    public String makeQuery(int page) {
        UriComponents uriComponentsBuilder = UriComponentsBuilder.newInstance()
                .queryParam("pageNum", page) // pageNum =  3
                .queryParam("amount", criteria.getAmount()) // pageNum=3&amount=10
                .queryParam("type", criteria.getType())
				.queryParam("keyword", criteria.getKeyword())
				.queryParam("sort", criteria.getSort())
				.queryParam("year", criteria.getYear())
				.queryParam("month", criteria.getMonth())
				.queryParam("category", criteria.getCategory())
                .build(); // ?pageNum=3&amount=10
        return uriComponentsBuilder.toUriString(); // ?pageNum=3&amount=10 리턴
    }

}
