package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.ClassBoardDto;
import data.dto.ShopBoardDto;

@Mapper
public interface SearchMapper {

  public List<ShopBoardDto> getSearch(HashMap<String, Object> map);

  public int getTotalCount(String keyword);

  public List<ClassBoardDto> getCSearch(HashMap<String, Object> map);

  public int getCTotalCount(String keyword);
}
