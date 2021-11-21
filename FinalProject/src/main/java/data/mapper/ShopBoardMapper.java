package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.ShopBoardDto;


@Mapper
public interface ShopBoardMapper {
  public int getTotalCount();
  public void updateReadCount(String num);
  public ShopBoardDto getData(String num);
  public int getMaxNum();
  public List<ShopBoardDto> getList(HashMap<String, Integer> map);
  public void insertBoard(ShopBoardDto dto);
  public void updateBoard(ShopBoardDto dto);
  public void deleteBoard(String num);
}
