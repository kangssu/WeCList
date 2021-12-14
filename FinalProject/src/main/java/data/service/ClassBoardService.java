package data.service;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.HeartDto;
import data.dto.InterDto;
import data.dto.ShopBoardDto;
import data.mapper.ClassBoardMapper;

@Service
public class ClassBoardService {

	@Autowired
	ClassBoardMapper mapper;


	public int getTotalCount() {
		return mapper.getTotalCount();
	}

	public ClassBoardDto getData(String num) {
		return mapper.getData(num);
	}

	public int getMaxNum(){
		return mapper.getMaxNum();
	}

	public List<ClassBoardDto> getAlllist()
	{
		return mapper.getAlllist();
	}

	public int getCaCount(String class_op_cate) {
	    return mapper.getCaCount(class_op_cate);
	}
	
	public List<ClassBoardDto> getCategory(String class_op_cate,int start,int perpage)
	  {
	    HashMap<String, Object> map = new HashMap<String, Object>();
	      map.put("class_op_cate", class_op_cate);
	      map.put("start", start);
	      map.put("perpage", perpage);
	      return mapper.getCategory(map);
	  }

	public List<ClassBoardDto> getAllnewlist()
	{
		return mapper.getAllnewlist();
	}

	public void insertBoard(ClassBoardDto dto) {
		mapper.insertBoard(dto);
	}

	public void insertNewBoard(ClassNewBoardDto dto) {
		mapper.insertNewBoard(dto);
	}

	public void updateBoard(ClassBoardDto dto) {
		mapper.updateBoard(dto);
	}

	public void deleteBoard(String num) {
		mapper.deleteBoard(num);
	}

	public List<HeartDto> getTrue(String num) {
		return mapper.getTrue(num);
	}

	public List<InterDto> getTrueInter(String num) {
		return mapper.getTrueInter(num);
	}

	public List<HeartDto> getpopData(String class_heart) {
		System.out.println("id" + class_heart);
		return mapper.getpopData(class_heart);
	}

	public List<HeartDto> getHotClass() {
		return mapper.getHotClass();
	}

	public List<ClassBoardDto> getPopular() {
		return mapper.getPopular();
	}

	public String getInterCount(String num) {
		return mapper.getInterCount(num);
	}

	public List<ClassBoardDto> getInter()
	{
		return mapper.getInter();
	}
	
	public int getIdCount(String myid) {
	    return mapper.getIdCount(myid);
	}
}
