package data.mapper;

import java.util.HashMap;
import org.apache.ibatis.annotations.Mapper;

import data.dto.InterDto;

@Mapper
public interface ClassInterMapper {

	public void insertInter(InterDto dto);
	public int getMaxInterCnt(int num);
	public void deleteInter(HashMap<String, Object> map);
	public void updateInter(int num);
	public void downdateInter(int num);
}
