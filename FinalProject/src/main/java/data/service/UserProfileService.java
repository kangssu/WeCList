package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.UserDto;
import data.mapper.UserMapper;

@Service
public class UserProfileService {

  @Autowired
  UserMapper mapper;

  // 해당 id에 대한 정보를 가져오기 위함!
  public UserDto GetIdData(String id) {
    // System.out.println(myid);
    return mapper.GetIdData(id);
  }

  // 해당 id에 대한 개수를 가져오기 위함!
  public int getTotalCount(String id) {
    return mapper.getTotalCount(id);
  }


}
