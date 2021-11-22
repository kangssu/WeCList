package data.service;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.ShopBoardDto;
import data.dto.UsersJoinDto;
import data.mapper.UsersJoinMapper;

@Service
public class UsersJoinService {

	@Autowired
	UsersJoinMapper mapper;
  
	public void insertUsers(UsersJoinDto dto) {
		mapper.insertUsers(dto);
	}

}
