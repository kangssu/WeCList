package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import data.dto.UserDto;
import data.dto.UsersJoinDto;


@Mapper
public interface UsersJoinMapper {
	public void insertUsers(UserDto dto);
	public int getIdCheck(String id);
}
