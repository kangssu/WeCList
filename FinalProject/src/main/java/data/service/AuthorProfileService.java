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
}
