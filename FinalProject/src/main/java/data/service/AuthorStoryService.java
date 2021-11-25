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

  public int getTotalCount() {
    return mapper.getTotalCount();
  }

  public void insertStory(AuthorStoryDto dto) {
    mapper.insertStory(dto);
  }

  public List<AuthorStoryDto> getList(int start, int perpage) {
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("start", start);
    map.put("perpage", perpage);
    return mapper.getList(map);
  }

}
