package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.AuthorProfileDto;
import data.mapper.AuthorProfileMapper;

@Service
public class AuthorProfileService {

  @Autowired
  AuthorProfileMapper mapper;

  public void insertProfile(AuthorProfileDto dto) {
    mapper.insertProfile(dto);
  }

  // 해당 id에 대한 정보를 가져오기 위함!
  public AuthorProfileDto GetIdData(String myid) {
    // System.out.println(myid);
    return mapper.GetIdData(myid);
  }

  // 해당 id에 대한 개수를 가져오기 위함!
  public int getTotalCount(String myid) {
    return mapper.getTotalCount(myid);
  }

  // 해당 id에 대한 개수를 가져오기 위함!
  public void updateProfile(AuthorProfileDto dto) {
    mapper.updateProfile(dto);
  }

  public void deleteProfile(String myid) {
    System.out.println(myid);
    mapper.deleteProfile(myid);
  }

}
