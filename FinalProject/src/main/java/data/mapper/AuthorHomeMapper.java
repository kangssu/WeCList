package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorHomeDto;
import data.dto.ClassBoardDto;
import data.dto.ShopBoardDto;
import data.dto.StoryDto;

@Mapper
public interface AuthorHomeMapper {

  public AuthorHomeDto getHList(String aid);

  public List<StoryDto> getHSList(HashMap<String, Object> map);

  public int getSangCount(String aid);
  
  public int getClassCount(String aid);

  public List<ShopBoardDto> getSangList(HashMap<String, Object> map);

  public List<ClassBoardDto> getClassList(HashMap<String, Object> map);

}
