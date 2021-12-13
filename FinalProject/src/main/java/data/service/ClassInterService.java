package data.service;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.InterDto;
import data.mapper.ClassInterMapper;

@Service
public class ClassInterService {

	@Autowired
	ClassInterMapper mapper;

	public void insertInter(InterDto dto) {
		mapper.insertInter(dto);
	}

	public void deleteInter(HashMap<String, Object> map) {
		mapper.deleteInter(map);
	}
	
	public int getMaxInterCnt(String num) {
	    return mapper.getMaxInterCnt(num);
	  }

}
