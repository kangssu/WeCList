package data.service;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.FollowDto;
import data.mapper.FollowMapper;

@Service
public class FollowService {

  @Autowired
  FollowMapper mapper;

  public void insertFollow(FollowDto dto) {
    mapper.insertFollow(dto);
  }

  public void deleteFollow(String from_id, String to_id) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("from_id", from_id);
    map.put("to_id", to_id);
    mapper.deleteFollow(map);
  }
}
