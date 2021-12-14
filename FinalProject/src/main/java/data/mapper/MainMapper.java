package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.ClassBoardDto;
import data.dto.HeartDto;
import data.dto.InterDto;
import data.dto.StoryDto;

@Mapper
public interface MainMapper {
	public int getTotalCount();
	public ClassBoardDto getData(String num);
	public int getMaxNum();
	public List<ClassBoardDto> getAlllist();
	public List<ClassBoardDto> getAllnewlist();
	public List<ClassBoardDto> getPopular();
	public List<InterDto> getInter();
	public List<HeartDto> getHotClass();
	public List<ClassBoardDto> getSevendays();
	public int getCartCount(String user_id);

	public List<StoryDto> getMainStoryList();
	public int getStoryTotalCount();

	//�˻� ���
	public List<ClassBoardDto> getSearch(HashMap<String, Object> map);
	public int getSearchTotal();
}
