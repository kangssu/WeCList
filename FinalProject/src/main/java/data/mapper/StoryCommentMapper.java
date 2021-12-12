package data.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import data.dto.StoryCommentDto;

@Mapper
public interface StoryCommentMapper {

  public void insertComment(StoryCommentDto dto);

  public void insertTwoComment(StoryCommentDto dto);

  public List<StoryCommentDto> getAllComment(String num);

  public int getMaxRegroup();

  public int getAndRegroup(int idx);

  public Object updateReidx(HashMap<String, Integer> map);

  public StoryCommentDto getComment(String idx);

  public void updateComment(StoryCommentDto dto);

  public void deleteComment(String idx);
}
