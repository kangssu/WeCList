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

  public List<ClassBoardDto> getList(HashMap<String, Integer> map);

  public void updateBoard(ClassBoardDto dto);

  public void insertBoard(ClassBoardDto dto);

  public void deleteBoard(int num);
  
  public int getIdCount(String myid);

}
