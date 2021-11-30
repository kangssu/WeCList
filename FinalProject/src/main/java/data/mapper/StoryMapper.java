package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorStoryDto;

@Mapper
public interface StoryMapper {

  public int getATotalCount();

  public void updateReadCount(String num);

  public AuthorStoryDto getAData(String num);

  public List<AuthorStoryDto> getAList(HashMap<String, Integer> map);

}
