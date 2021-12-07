package data.mapper;

import java.util.HashMap;
import org.apache.ibatis.annotations.Mapper;
import data.dto.FollowDto;

@Mapper
public interface FollowMapper {

  public void insertFollow(FollowDto dto);

  public void deleteFollow(HashMap<String, Object> map);

}
