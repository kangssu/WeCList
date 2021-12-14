package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.ClassBoardDto;

@Mapper
public interface SearchMapper {
	//검색 기능
	public List<ClassBoardDto> getSearch(HashMap<String, Object> map);
	public int getSearchCount(String keyword);
}
