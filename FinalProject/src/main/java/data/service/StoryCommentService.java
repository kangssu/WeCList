package data.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.StoryCommentDto;
import data.mapper.StoryCommentMapper;

@Service
public class StoryCommentService {

  @Autowired
  StoryCommentMapper mapper;

  public void insertComment(StoryCommentDto dto) {
    mapper.insertComment(dto);
  }

  public void insertTwoComment(StoryCommentDto dto) {
    mapper.insertTwoComment(dto);
  }

  public List<StoryCommentDto> getAllComment(String num) {
    // System.out.println(num);
    return mapper.getAllComment(num);
  }

  public int getMaxRegroup() {
    return mapper.getMaxRegroup();
  }

  public int getAndRegroup(int idx) {
    return mapper.getAndRegroup(idx);
  }

  public Object updateReidx(int regroup, int reidx) {
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("regroup", regroup);
    map.put("reidx", reidx);
    return mapper.updateReidx(map);
  }

  public StoryCommentDto getComment(String idx) {
    return mapper.getComment(idx);
  }

  public void updateComment(StoryCommentDto dto) {
    mapper.updateComment(dto);
  }

  public void deleteComment(String idx) {
    mapper.deleteComment(idx);
  }

}
