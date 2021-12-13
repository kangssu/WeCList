package data.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.StoryDto;

@Mapper
public interface MainMapper {
  public int getTotalCount();

  public ClassBoardDto getData(String num);

  public int getMaxNum();

  public List<ClassBoardDto> getAlllist();

  public List<ClassNewBoardDto> getAllnewlist();

  public List<ClassBoardDto> getPopular();

  public List<StoryDto> getMainStoryList();

  public int getStoryTotalCount();
}
