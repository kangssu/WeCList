package data.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import data.dto.AuthorDto;
import data.dto.FollowDto;
import data.service.AuthorService;

@Controller
public class UserFollowController {

  @Autowired
  AuthorService service;

  // 회원 마이페이지에서 팔로우하는 작가 리스트!
  // Mapper,Service Author에서 값줌
  @GetMapping("/mypage/follow/list")
  public ModelAndView slist(@RequestParam(defaultValue = "1") int currentPage, String idx,
      HttpSession session) {

    ModelAndView mview = new ModelAndView();

    // 팔로우,팔로잉 버튼 출력을 위함
    String from_id = (String) session.getAttribute("id");
    int FollowCount = service.getFollowCount(from_id);
    List<FollowDto> followTrue = service.getTrue(from_id);
    // System.out.println("지금테스트" + followTrue);
    System.out.println(FollowCount);

    int perPage = 10;
    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    totalPage = FollowCount / perPage + (FollowCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;

    if (endPage > totalPage)
      endPage = totalPage;
    start = (currentPage - 1) * perPage;

    List<AuthorDto> list = service.getList(start, perPage);

    int no = FollowCount - (currentPage - 1) * perPage;

    mview.addObject("list", list);
    mview.addObject("followTrue", followTrue);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);

    mview.addObject("FollowCount", FollowCount);
    mview.setViewName("/1_2/user_mypage/follow_list");

    return mview;
  }
}
