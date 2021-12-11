package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.FollowDto;
import data.dto.HeartDto;
import data.dto.InterDto;

@Mapper
public interface ClassBoardMapper {
  public int getTotalCount();
  public ClassBoardDto getData(String num);
  public int getMaxNum();
  public List<ClassBoardDto> getAlllist();
  public List<ClassNewBoardDto> getAllnewlist();
  public List<ClassNewBoardDto> getSevendays();
  public List<ClassBoardDto> getCategory(String class_op_cate);
  public void insertBoard(ClassBoardDto dto);
  public void insertNewBoard(ClassNewBoardDto dto);
  public void updateBoard(ClassBoardDto dto);
  public void deleteBoard(String num);
  
  public List<ClassBoardDto> getPopular();
  public List<HeartDto> getTrue(String num);
  public List<HeartDto> getpopData(String class_heart);
  public List<HeartDto> getHotClass();
  
  public List<InterDto> getTrueInter(String num);
}
