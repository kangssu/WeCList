package data.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import data.dto.AuthorStoryDto;
import data.dto.ShopBoardDto;
import data.service.ShopBoardService;
import data.service.StoryService;

@Controller
public class StoryController {

  @Autowired
  StoryService service;


  @GetMapping("/story/list")
  public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage) {

    ModelAndView mview = new ModelAndView();

    int atotalCount = service.getATotalCount();
    System.out.println(atotalCount);

    int perPage = 9;
    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    totalPage = atotalCount / perPage + (atotalCount % perPage == 0 ? 0 : 1);

    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;

    if (endPage > totalPage)
      endPage = totalPage;

    start = (currentPage - 1) * perPage;

    List<AuthorStoryDto> list = service.getAList(start, perPage);

    int no = atotalCount - (currentPage - 1) * perPage;

    mview.addObject("list", list);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);

    mview.addObject("atotalCount", atotalCount);
    mview.setViewName("/story/story_list");

    return mview;
  }

  // 리스트에서 뷰로 이동!
  @GetMapping("/story/view")
  public ModelAndView view(@RequestParam String num,
      @RequestParam(defaultValue = "1") int currentPage, @RequestParam(required = false) String key,
      @RequestParam Map<String, String> map) {
    ModelAndView mview = new ModelAndView();

    // 목록에서 key에 list를 보낼 경우에만 조회수 증가!
    if (key != null) {
      service.updateReadCount(num);
    }

    AuthorStoryDto dto = service.getAData(num);

    mview.addObject("dto", dto);
    mview.addObject("currentPage", currentPage);

    mview.setViewName("/story/story_view");
    return mview;
  }

  

}
