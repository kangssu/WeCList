package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import data.dto.UsersJoinDto;


@Mapper
public interface UsersJoinMapper {
	public void insertUsers(UsersJoinDto dto);
	public int getIdCheck(String id);
}
