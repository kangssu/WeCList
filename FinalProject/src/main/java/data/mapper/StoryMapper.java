package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.StoryDto;

@Mapper
public interface StoryMapper {

  public int getATotalCount();

  public void updateReadCount(String num);

  public StoryDto getAData(String num);

  public List<StoryDto> getAList(HashMap<String, Integer> map);

}
