package data.service;

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

}
