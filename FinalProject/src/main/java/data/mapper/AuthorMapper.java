package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.AuthorDto;

@Mapper
public interface AuthorMapper {

  public List<AuthorDto> getList(HashMap<String, Integer> map);
}
