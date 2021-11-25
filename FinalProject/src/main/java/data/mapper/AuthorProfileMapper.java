package data.mapper;

import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorProfileDto;

@Mapper
public interface AuthorProfileMapper {

  public void insertProfile(AuthorProfileDto dto);

  public AuthorProfileDto GetIdData(String myid);

  public int getTotalCount(String myid);

  public void updateProfile(AuthorProfileDto dto);

  public void deleteProfile(String myid);
}
