package data.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import data.dto.FollowDto;
import data.service.FollowService;

@RestController
public class FollowController {

  @Autowired
  FollowService service;

  // 회원이 팔로우를 클릭했을때!
  @PostMapping("/author/finsert")
  public void insert(@ModelAttribute FollowDto dto, HttpSession session) {

    dto.setFollow_cnt(1);

    // insert
    service.insertFollow(dto);
  }

  // 팔로우 취소
  @PostMapping("/author/fdelete")
  public void delete(String from_id, String to_id, HttpSession session) {
    service.deleteFollow(from_id, to_id);
  }
}
