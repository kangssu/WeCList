package data.service;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import data.dto.ClassBoardDto;
import data.mapper.ClassBoardMapper;

@Service
public class ClassBoardService {

	@Autowired
	ClassBoardMapper mapper;


	public int getTotalCount() {
		return mapper.getTotalCount();
	}

	public void updateReadCount(String num) {
		mapper.updateReadCount(num);
	}

	public ClassBoardDto getData(String num) {
		return mapper.getData(num);
	}
	public int getMaxNum(){
		return mapper.getMaxNum();
	}

	public List<ClassBoardDto> getAlllist()
	{
		return mapper.getAlllist();
	}

	public void insertBoard(ClassBoardDto dto) {
		mapper.insertBoard(dto);
	}

	public void updateBoard(ClassBoardDto dto) {
		mapper.updateBoard(dto);
	}

	public void deleteBoard(String num) {
		mapper.deleteBoard(num);

	}
}
