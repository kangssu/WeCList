package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.AuthorDto;
import data.mapper.AuthorMapper;

@Service
public class AuthorService {

  @Autowired
  AuthorMapper mapper;

  public List<AuthorDto> getList(int start, int perpage) {
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("start", start);
    map.put("perpage", perpage);
    return mapper.getList(map);
  }
}
