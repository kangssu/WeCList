package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorStoryDto;
import data.dto.ClassBoardDto;

@Mapper
public interface AuthortClassMapper {

  public int getTotalCount(String myid);

  public int getMaxNum();

  public ClassBoardDto getData(String num);

  public List<ClassBoardDto> getList(HashMap<String, Object> map);

  public void updateStory(ClassBoardDto dto);

  public void deleteStory(String num);

  public void insertBoard(ClassBoardDto dto);

}
