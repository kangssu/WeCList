package data.mapper;

import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorProfileDto;

@Mapper
public interface AuthorProfileMapper {

  public void insertProfile(AuthorProfileDto dto);
}
