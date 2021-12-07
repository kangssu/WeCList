package data.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import data.dto.StoryCommentDto;
import data.service.StoryCommentService;

@RestController
public class StoryCommentController {

  @Autowired
  StoryCommentService service;

  // 일반 회원이 댓글을 등록!
  @PostMapping("/story/cinsert")
  public void insert(@ModelAttribute StoryCommentDto dto, HttpSession session) {
    int reidx = dto.getReidx(); // 새글 0, 댓글 1
    int regroup = dto.getRegroup(); // 기본 값은 0
    String myid = (String) session.getAttribute("id");

    if (reidx == 0) {
      regroup = service.getMaxRegroup() + 1;
    }

    dto.setWriter(myid);
    dto.setRegroup(regroup);

    // insert
    service.insertComment(dto);
  }

  // 작가가 댓글에 댓글을 등록!
  @PostMapping("/story/acinsert")
  public void acinsert(@ModelAttribute StoryCommentDto dto, HttpSession session) {
    String myid = (String) session.getAttribute("id");

    dto.setWriter(myid);
    dto.setReidx(1);

    // insert
    service.insertTwoComment(dto);

  }

  // 댓글 리스트 출력!
  @GetMapping("/story/clist")
  public List<StoryCommentDto> clist(String num) {
    return service.getAllComment(num);
  }

  @GetMapping("/story/cdata")
  public StoryCommentDto data(String idx) {
    return service.getComment(idx);
  }

  @PostMapping("/story/cupdate")
  public void aupdate(@ModelAttribute StoryCommentDto dto) {
    service.updateComment(dto);
  }

  @GetMapping("/story/cdelete")
  public void delete(String idx) {
    service.deleteComment(idx);
  }

}
