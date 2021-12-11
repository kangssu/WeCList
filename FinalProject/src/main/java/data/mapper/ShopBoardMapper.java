package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.ClassBoardDto;
import data.dto.HeartDto;
import data.dto.ShopBoardDto;
import data.dto.ShopHeartDto;


@Mapper
public interface ShopBoardMapper {
  public int getTotalCount();
  public int getIdCount(String myid);
  public int getCaCount(String shopop);
  public void updateReadCount(String num);
  public ShopBoardDto getData(String num);
  public int getMaxNum();
  public List<ShopBoardDto> getList(HashMap<String, Integer> map);
  public List<ShopBoardDto> getCategory(HashMap<String, Object> map);
  public void insertBoard(ShopBoardDto dto);
  public void updateBoard(ShopBoardDto dto);
  public void deleteBoard(int num);
  public List<ShopHeartDto> getTrue(String num);
  public List<ShopHeartDto> getHotShop();
  public List<ShopHeartDto> getpopData(String shop_heart);
  public List<ShopBoardDto> getPopular();
}
