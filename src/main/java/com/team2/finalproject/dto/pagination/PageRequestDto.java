package com.team2.finalproject.dto.pagination;

import lombok.Builder;
import lombok.Data;

@Data
public class PageRequestDto {
	
	private int pageNum;
	
	private int amount;
	
	public PageRequestDto() {
		this(1,12);
	}
	

	@Builder
	public PageRequestDto(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
	
}
