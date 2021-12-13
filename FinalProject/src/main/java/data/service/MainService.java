package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.StoryDto;
import data.mapper.MainMapper;

@Service
public class MainService {

	@Autowired
	MainMapper mapper;

	public int getTotalCount() {
		return mapper.getTotalCount();
	}

	public ClassBoardDto getData(String num) {
		return mapper.getData(num);
	}

	public int getMaxNum() {
		return mapper.getMaxNum();
	}

	public List<ClassBoardDto> getAlllist() {
		return mapper.getAlllist();
	}

	public List<ClassBoardDto> getAllnewlist() {
		return mapper.getAllnewlist();
	}

	public List<StoryDto> getMainStoryList() {
		return mapper.getMainStoryList();
	}

	public int getStoryTotalCount() {
		return mapper.getStoryTotalCount();
	}

	public int getCartCount(String user_id){
		return mapper.getCartCount(user_id);
	}

	//검색 기능
	public int getSearchTotal() {
		return mapper.getSearchTotal();
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
