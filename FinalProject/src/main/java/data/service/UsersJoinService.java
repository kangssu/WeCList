package data.service;

import java.util.HashMap;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.ShopBoardDto;
import data.dto.UserDto;
import data.mapper.UserMapper;

@Service
public class UsersJoinService {

	@Autowired
	UserMapper mapper;
  
	public void insertUsers(UserDto dto) {
		mapper.insertUsers(dto);
	}
	
	public void login (HashMap<String, String> map) {
		mapper.login(map);
	}

}
