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
public class AuthorController {

  @Autowired
  AuthorService service;

  /*
   * @GetMapping("/author/list") public String list() { return "/author/author_list"; }
   */

  // 전체 출력
  @GetMapping("/author/list")
  public ModelAndView slist(@RequestParam(defaultValue = "1") int currentPage, String idx,
      HttpSession session, FollowDto fdto
  /* @RequestParam(value = "from_id", required = false) String from_id */) {

    ModelAndView mview = new ModelAndView();

    int totalCount = service.getTotalCount();

    String to_id = fdto.getTo_id();
    // System.out.println("작가아이디" + to_id); // null ㅠㅠ

    String from_id = (String) session.getAttribute("id");
    List<FollowDto> followTrue = service.getTrue(from_id);
    System.out.println("지금테스트" + followTrue.toString());

    List<FollowDto> flist = service.GetData(from_id);
    // System.out.println("출력" + flist + "확인" + followTrue);

    int perPage = 10;
    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;

    if (endPage > totalPage)
      endPage = totalPage;
    start = (currentPage - 1) * perPage;

    List<AuthorDto> list = service.getList(start, perPage);
    // System.out.println("출력" + list);

    int no = totalCount - (currentPage - 1) * perPage;

    mview.addObject("list", list);
    mview.addObject("flist", flist);
    mview.addObject("followTrue", followTrue);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);

    mview.addObject("totalCount", totalCount);
    mview.setViewName("/author/author_list");

    return mview;
  }

}
