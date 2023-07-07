package com.team2.finalproject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.team2.finalproject.dto.pagination.PageRequestDto;
import com.team2.finalproject.dto.product.ProductDto;

@Mapper
public interface SearchMapper {

	List<ProductDto> getSearchProductByPagination(@Param("pageRequest") PageRequestDto pageRequest, @Param("query") String query);

}
