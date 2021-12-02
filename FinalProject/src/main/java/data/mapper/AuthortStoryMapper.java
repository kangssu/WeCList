package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorStoryDto;
import data.dto.ClassBoardDto;

@Mapper
public interface AuthortStoryMapper {

  public int getTotalCount(String myid);

  public int getMaxNum();

  public AuthorStoryDto getData(String num);

  public void insertStory(AuthorStoryDto dto);

  public List<AuthorStoryDto> getList(HashMap<String, Object> map);

  public void updateStory(AuthorStoryDto dto);

  public void deleteStory(String num);

}
