package com.team2.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team2.finalproject.dto.pagination.PageRequestDto;
import com.team2.finalproject.dto.product.ProductDto;
import com.team2.finalproject.mapper.MainMapper;
import com.team2.finalproject.mapper.SearchMapper;

@Service
public class SearchService {

	@Autowired
	SearchMapper searchMapper;
	@Autowired
	MainMapper mainMapper;
	
	public List<ProductDto> getProductBySearchQuery(PageRequestDto pageRequest,String query) {
		List<ProductDto> searchList;
		if(query == "" || query == null) {
			searchList = mainMapper.getAllProduct();
		}else {
			searchList = searchMapper.getSearchProductByPagination(pageRequest ,query);
		}
		return searchList;
	}

}
