package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.AuthorDto;
import data.dto.FollowDto;
import data.mapper.AuthorMapper;

@Service
public class AuthorService {

  @Autowired
  AuthorMapper mapper;

  public int getTotalCount() {
    return mapper.getTotalCount();
  }

  public int getFollowCount(String from_id) {
    return mapper.getFollowCount(from_id);
  }

  public int getHotCount() {
    return mapper.getHotCount();
  }

  public List<FollowDto> getTrue(String from_id) {
    return mapper.getTrue(from_id);
  }

  public List<FollowDto> GetData(String from_id) {
    System.out.println("나" + from_id);
    return mapper.GetData(from_id);
  }

  public List<AuthorDto> getList(int start, int perpage) {
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("start", start);
    map.put("perpage", perpage);
    return mapper.getList(map);
  }

  public List<AuthorDto> getHotAuthor() {
    return mapper.getHotAuthor();
  }

}
