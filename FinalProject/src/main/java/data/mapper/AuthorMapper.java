package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorDto;
import data.dto.FollowDto;

@Mapper
public interface AuthorMapper {

  public int getTotalCount();

  public int getHotCount();

  public List<FollowDto> getTrue(String from_id);

  public List<FollowDto> GetData(String from_id);

  public List<AuthorDto> getList(HashMap<String, Integer> map);

  public List<AuthorDto> getHotAuthor();

}
