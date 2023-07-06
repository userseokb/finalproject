package com.team2.finalproject.dto.pagination;

import lombok.Builder;
import lombok.Data;

@Data
public class PageResponseDto {

	private int pageCount;
	
	private int startPage, endPage;
	
	private boolean prev,next;
	
	private int total;
	
	private int realEnd;
	
	private PageRequestDto pageRequest;
	
	public PageResponseDto() {}
	
	
	public PageResponseDto(int total, int pageCount, PageRequestDto pageRequest) {
	
		this.total = total;
        this.pageCount = pageCount;
        this.pageRequest = pageRequest;

        this.endPage = (int)(Math.ceil(pageRequest.getPageNum() * 1.0 / pageCount)) * pageCount;
        this.startPage = endPage - (pageCount - 1);

        realEnd = (int)(Math.ceil(total * 1.0 / pageRequest.getAmount()));

        if(endPage > realEnd){
        	this.endPage = realEnd;
        }

        this.prev = this.startPage > 1;
        this.next = this.endPage < realEnd;
	}
}

