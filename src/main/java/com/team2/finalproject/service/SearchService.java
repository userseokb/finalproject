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
	
	public List<ProductDto> getProductBySearchQuery(String qeury) {
		List<ProductDto> searchList;
		if(qeury == "" || qeury == null) {
			searchList = mainMapper.getAllProduct();
		}else {
			searchList = searchMapper.getProductBySearchQuery(qeury);
		}
		return searchList;
	}

}
