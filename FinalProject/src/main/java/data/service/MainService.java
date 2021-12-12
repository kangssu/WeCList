package data.service;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
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
	
	public int getMaxNum(){
		return mapper.getMaxNum();
	}

	public List<ClassBoardDto> getAlllist()
	{
		return mapper.getAlllist();
	}
	
	public List<ClassNewBoardDto> getAllnewlist()
	{
		return mapper.getAllnewlist();
	}

	public int getCartCount(String id){ return mapper.getCartCount(id);}
}
