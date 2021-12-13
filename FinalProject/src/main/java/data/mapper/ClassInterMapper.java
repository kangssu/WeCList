package data.mapper;

import java.util.HashMap;
import org.apache.ibatis.annotations.Mapper;

import data.dto.InterDto;

@Mapper
public interface ClassInterMapper {

	public void insertInter(InterDto dto);
	public int getMaxInterCnt(String num);
	public void deleteInter(HashMap<String, Object> map);
}
