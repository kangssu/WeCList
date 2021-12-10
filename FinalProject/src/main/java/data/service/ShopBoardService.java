package data.service;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.ClassBoardDto;
import data.dto.HeartDto;
import data.dto.ShopBoardDto;
import data.dto.ShopHeartDto;
import data.mapper.ShopBoardMapper;

@Service
public class ShopBoardService {

  @Autowired
  ShopBoardMapper mapper;
  
  
  public int getTotalCount() {
    
    
    return mapper.getTotalCount();
  }
  public int getIdCount(String myid) {
    return mapper.getIdCount(myid);
  };
  
  public int getCaCount(String shopop) {
    return mapper.getCaCount(shopop);
  };
  public void updateReadCount(String num) {
    mapper.updateReadCount(num);
  }
  
  public ShopBoardDto getData(String num) {
    return mapper.getData(num);
  }
  public int getMaxNum(){
    return mapper.getMaxNum();
  }
  
  public List<ShopBoardDto> getList(int start , int perpage){

  HashMap<String, Integer> map = new HashMap<String, Integer>();
  map.put("start", start);
  map.put("perpage", perpage);
  
  return mapper.getList(map);
  }

  public List<ShopBoardDto> getCategory(String shopop,int start,int perpage)
  {
    HashMap<String, Object> map = new HashMap<String, Object>();
      map.put("shopop", shopop);
      map.put("start", start);
      map.put("perpage", perpage);
      
          

      return mapper.getCategory(map);
  }
  
  public void insertBoard(ShopBoardDto dto) {
    mapper.insertBoard(dto);
  }
  
  public void updateBoard(ShopBoardDto dto) {
    mapper.updateBoard(dto);
  }
  
  public void deleteBoard(int num) {
    mapper.deleteBoard(num);

  }
  public List<ShopHeartDto> getTrue(String num) {
    return mapper.getTrue(num);
}
  
  public List<ShopHeartDto> getpopData(String shop_heart) {
    System.out.println("id" + shop_heart);
    return mapper.getpopData(shop_heart);
}
  
  public List<ShopHeartDto> getHotClass() {
    return mapper.getHotShop();
}

public List<ShopBoardDto> getPopular() {
    return mapper.getPopular();
}
}
