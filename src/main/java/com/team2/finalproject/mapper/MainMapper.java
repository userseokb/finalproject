package com.team2.finalproject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.team2.finalproject.dto.product.ProductDto;

@Mapper
public interface MainMapper {
	//전체 상품 가져오기
	public List<ProductDto> getAllProduct();

}
