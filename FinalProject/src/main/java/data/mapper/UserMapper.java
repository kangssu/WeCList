package data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import data.dto.UserDto;


@Mapper
public interface UserMapper {

	public UserDto GetIdData(String myid);
  	public int getTotalCount(String myid);
  	public void insertUsers(UserDto dto);
  	public int getIdCheck(String id);
  	public int getNickCheck(String nickname);
  	public int getEmailCheck(String email);
	public int getCheckPass(HashMap<String, String> map);
	public UserDto getUserData(String id);
	public void deleteMember(String num);
	public void updateUsers(UserDto dto);
	
	public String getName(String id);
	public int login(HashMap<String, String> map);
	
	public List<UserDto> getUsersData();
}
