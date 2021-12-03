package data.mapper;

import java.util.HashMap;
import org.apache.ibatis.annotations.Mapper;
import data.dto.UserDto;
import data.dto.UsersJoinDto;

@Mapper
public interface UserMapper {

	public UserDto GetIdData(String myid);
  	public int getTotalCount(String myid);
  	public void insertUsers(UserDto dto);
  	public int getIdCheck(String id);
	public int getCheckPass(HashMap<String, String> map);
	public UserDto getMemberData(String num);
	public void deleteMember(String num);
	public void updateMember(UserDto dto);
	
	public String getName(String id);
	public int login(HashMap<String, String> map);
}
