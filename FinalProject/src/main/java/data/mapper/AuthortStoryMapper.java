package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorStoryDto;

@Mapper
public interface AuthortStoryMapper {

  public int getTotalCount();

  public void insertStory(AuthorStoryDto dto);

  public List<AuthorStoryDto> getList(HashMap<String, Integer> map);
}
