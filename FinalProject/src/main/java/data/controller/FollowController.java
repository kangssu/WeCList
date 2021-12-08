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

  @PostMapping("/author/finsert")
  public void insert(@ModelAttribute FollowDto dto, HttpSession session) {
    int num = dto.getNum();
    int follow_cnt = dto.getFollow_cnt();
    String to_id = dto.getTo_id();
    System.out.println(to_id);

    follow_cnt = service.getMaxFollowCnt(to_id) + 1;

    System.out.println(follow_cnt);

    dto.setFollow_cnt(follow_cnt);

    // insert
    service.insertFollow(dto);
  }

  // 팔로우 취소
  @PostMapping("/author/fdelete")
  public void delete(String from_id, String to_id, HttpSession session) {
    service.deleteFollow(from_id, to_id);
  }
}
