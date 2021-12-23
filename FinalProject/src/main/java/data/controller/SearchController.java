package data.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import data.dto.ClassBoardDto;
import data.dto.ShopBoardDto;
import data.service.SearchService;

@Controller
public class SearchController {

  @Autowired
  SearchService service;

  // 작품 검색시 메핑!
  @GetMapping("/search/list")
  public ModelAndView shopSearch(@RequestParam(value = "keyword", required = false) String keyword,
      HttpSession session) {

    session.setAttribute("keyword", keyword);
    ModelAndView mview = new ModelAndView();

    int totalCount = service.getTotalCount(keyword);

    List<ShopBoardDto> search = service.getSearch(keyword);

    mview.addObject("search", search);
    mview.addObject("totalCount", totalCount);
    mview.setViewName("/search/shop_search_list");
    return mview;
  }

  @GetMapping("/search/clist")
  public ModelAndView clist(@RequestParam(value = "keyword", required = false) String keyword,
      HttpSession session) {

    session.setAttribute("keyword", keyword);
    ModelAndView mview = new ModelAndView();

    int ctotalCount = service.getCTotalCount(keyword);

    List<ClassBoardDto> csearch = service.getCSearch(keyword);

    mview.addObject("csearch", csearch);
    mview.addObject("ctotalCount", ctotalCount);
    mview.setViewName("/search/class_search_list");
    return mview;
  }
}
