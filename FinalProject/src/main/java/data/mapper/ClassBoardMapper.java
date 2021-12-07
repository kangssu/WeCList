package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.HeartDto;

@Mapper
public interface ClassBoardMapper {
  public int getTotalCount();
  public ClassBoardDto getData(String num);
  public int getMaxNum();
  public List<ClassBoardDto> getAlllist();
  public List<ClassNewBoardDto> getAllnewlist();
  public List<ClassBoardDto> getPopular();
  public List<ClassNewBoardDto> getSevendays();
  public List<ClassBoardDto> getCategory(String class_op_cate);
  public void insertBoard(ClassBoardDto dto);
  public void insertNewBoard(ClassNewBoardDto dto);
  public void updateBoard(ClassBoardDto dto);
  public void deleteBoard(String num);
  public void heart_save(HeartDto dto);
  public void heart_remove(String idx);
  public void heart_up(ClassBoardDto dto);
  public void heart_down(ClassBoardDto dto);
}
