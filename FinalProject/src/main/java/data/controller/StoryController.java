package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoryController {

  @GetMapping("/story/list")
  public String list() {
    return "/story/story_list";
  }


  ///////////// 여기 아래는 마이페이지 스토리 매핑! /////////////
  @GetMapping("/mypage/story/list")
  public String story() {
    return "/1/author_mypage/mypage_story_list";
  }

  @GetMapping("/mypage/story/view")
  public String view() {
    return "/1/author_mypage/mypage_story_view";
  }

  @GetMapping("/mypage/story/form")
  public String form() {
    return "/1/author_mypage/mypage_story_write_form";
  }
}
