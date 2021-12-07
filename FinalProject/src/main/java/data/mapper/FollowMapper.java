package data.mapper;

import org.apache.ibatis.annotations.Mapper;
import data.dto.FollowDto;

@Mapper
public interface FollowMapper {

  public void insertFollow(FollowDto dto);

}
