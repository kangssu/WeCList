package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.ClassBoardDto;
import data.dto.ShopBoardDto;
import data.mapper.SearchMapper;

@Service
public class SearchService {

  @Autowired
  SearchMapper mapper;

  public List<ShopBoardDto> getSearch(String keyword) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("keyword", keyword);
    return mapper.getSearch(map);
  }

  public int getTotalCount(String keyword) {
    return mapper.getTotalCount(keyword);
  }

  public List<ClassBoardDto> getCSearch(String keyword) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("keyword", keyword);
    return mapper.getCSearch(map);
  }

  public int getCTotalCount(String keyword) {
    return mapper.getTotalCount(keyword);
  }

}
