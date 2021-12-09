package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.AuthorStoryDto;
import data.dto.ClassBoardDto;
import data.mapper.AuthortClassMapper;
import data.mapper.AuthortStoryMapper;

@Service
public class AuthorClassService {

	@Autowired
	AuthortClassMapper mapper;

	public int getTotalCount(String myid) {
		return mapper.getTotalCount(myid);
	}

	public ClassBoardDto getData(String num) {
		return mapper.getData(num);
	}

	public int getMaxNum() {
		return mapper.getMaxNum();
	}

	public List<ClassBoardDto> getList(int start, int perpage) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("perpage", perpage);
		return mapper.getList(map);
	}

	public void updateBoard(ClassBoardDto dto) {
		mapper.updateBoard(dto);
	}

	public void insertBoard(ClassBoardDto dto) {
		mapper.insertBoard(dto);
	}

	public void deleteBoard(int num) {
		mapper.deleteBoard(num);
	}

	public int getIdCount(String myid) {
		return mapper.getIdCount(myid);
	}

}
