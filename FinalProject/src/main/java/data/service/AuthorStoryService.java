package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.AuthorStoryDto;
import data.mapper.AuthortStoryMapper;

@Service
public class AuthorStoryService {

  @Autowired
  AuthortStoryMapper mapper;

  public int getTotalCount(String myid) {
    return mapper.getTotalCount(myid);
  }

  public AuthorStoryDto getData(String num) {
    return mapper.getData(num);
  }

  public int getMaxNum() {
    return mapper.getMaxNum();
  }

  public void insertStory(AuthorStoryDto dto) {
    mapper.insertStory(dto);
  }

  public List<AuthorStoryDto> getList(String myid, int start, int perpage) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("myid", myid);
    map.put("start", start);
    map.put("perpage", perpage);
    return mapper.getList(map);
  }

  public void updateStory(AuthorStoryDto dto) {
    mapper.updateStory(dto);
  }

  public void deleteStory(String num) {
    mapper.deleteStory(num);
  }

}
