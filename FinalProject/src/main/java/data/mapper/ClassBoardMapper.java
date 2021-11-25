package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;

@Mapper
public interface ClassBoardMapper {
  public int getTotalCount();
  public void updateReadCount(String num);
  public ClassBoardDto getData(String num);
  public int getMaxNum();
  public List<ClassBoardDto> getAlllist();
  public List<ClassNewBoardDto> getAllnewlist();
  public List<ClassBoardDto> getPopular();
//  public List<ClassBoardDto> getCate();
  public void insertBoard(ClassBoardDto dto);
  public void insertNewBoard(ClassNewBoardDto dto);
  public void updateBoard(ClassBoardDto dto);
  public void deleteBoard(String num);

}
