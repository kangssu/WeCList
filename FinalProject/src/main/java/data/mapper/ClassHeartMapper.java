package data.mapper;

import java.util.HashMap;
import org.apache.ibatis.annotations.Mapper;

import data.dto.HeartDto;

@Mapper
public interface ClassHeartMapper {

	public void insertHeart(HeartDto dto);
	public int getMaxLikeCnt(String num);
	public void deleteHeart(HashMap<String, Object> map);
}
