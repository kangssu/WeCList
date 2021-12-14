package data.service;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.HeartDto;
import data.mapper.ClassHeartMapper;

@Service
public class ClassHeartService {

	@Autowired
	ClassHeartMapper mapper;

	public void insertHeart(HeartDto dto) {
		mapper.insertHeart(dto);
	}

	public void deleteHeart(String class_heart, int num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("class_heart", class_heart);
		map.put("num", num);
		mapper.deleteHeart(map);
	}

	public int getMaxLikeCnt(int num) {
		return mapper.getMaxLikeCnt(num);
	}

	public void updateHeart(int num) {
		mapper.updateHeart(num);
	}

	public void downdateHeart(int num) {
		mapper.downdateHeart(num);
	}

}
