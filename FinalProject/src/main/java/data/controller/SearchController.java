package data.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import data.dto.ClassBoardDto;
import data.mapper.SearchMapper;
import data.service.SearchService;

@Controller
public class SearchController {

  @Autowired
  SearchMapper mapper;

  @Autowired
  SearchService service;

  @GetMapping("/search")
  public ModelAndView shopSearch(@RequestParam(defaultValue = "1") int currentPage,
      @RequestParam(value = "keyword", required = false) String keyword, HttpSession session) {

    session.setAttribute("keyword", keyword);
    ModelAndView mview = new ModelAndView();

    int perPage = 9;
    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;
    int totalCount = service.getSearchCount(keyword);

    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;

    if (endPage > totalPage)
      endPage = totalPage;
    start = (currentPage - 1) * perPage;

    List<ClassBoardDto> Search = service.getSearch(keyword, start, perPage);

    int no = totalCount - (currentPage - 1) * perPage;

    mview.addObject("Search", Search);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);
    mview.addObject("totalCount", totalCount);
    mview.setViewName("/search/search");
    return mview;
  }
}
