package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.AuthorStoryDto;
import data.mapper.StoryMapper;

@Service
public class StoryService {

  @Autowired
  StoryMapper mapper;

  public int getATotalCount() {
    return mapper.getATotalCount();
  }

  public void updateReadCount(String num) {
    mapper.updateReadCount(num);
  }

  public AuthorStoryDto getAData(String num) {
    return mapper.getAData(num);
  }

  public List<AuthorStoryDto> getAList(int start, int perpage) {
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("start", start);
    map.put("perpage", perpage);
    return mapper.getAList(map);
  }

}
