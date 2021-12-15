package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.HeartDto;
import data.dto.InterDto;
import data.dto.StoryDto;
import data.mapper.MainMapper;
import data.mapper.SearchMapper;

@Service
public class SearchService {

	@Autowired
	SearchMapper mapper;

	public int getSearchCount(String keyword) {
		return mapper.getSearchCount(keyword);
	}

	public List<ClassBoardDto> getSearch(String keyword,int start,int perpage)
	{
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("perpage", perpage);
		return mapper.getSearch(map);
	}



}
