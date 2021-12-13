package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.AuthorHomeDto;
import data.dto.ClassBoardDto;
import data.dto.ShopBoardDto;
import data.dto.StoryDto;
import data.mapper.AuthorHomeMapper;

@Service
public class AuthorHomeService {
  @Autowired
  AuthorHomeMapper mapper;

  public AuthorHomeDto getHList(String aid) {
    return mapper.getHList(aid);
  }

  public List<StoryDto> getHSList(String aid, int start, int perpage) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("aid", aid);
    map.put("start", start);
    map.put("perpage", perpage);
    return mapper.getHSList(map);
  }

  public int getSangCount(String aid) {
    return mapper.getSangCount(aid);
  };
  
  public int getClassCount(String aid) {
	    return mapper.getClassCount(aid);
  };

  public List<ShopBoardDto> getSangList(String aid, int start, int perpage) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("aid", aid);
    map.put("start", start);
    map.put("perpage", perpage);
    return mapper.getSangList(map);
  }


  public List<ClassBoardDto> getClassList(String aid, int start, int perPage) {
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("aid", aid);
	map.put("start", start);
	map.put("perPage", perPage);
	return mapper.getClassList(map);
}

}
