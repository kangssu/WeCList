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
	  public ModelAndView shopSearch(
	      @RequestParam(defaultValue = "1") int currentPage,
	      @RequestParam(value = "keyword", required = false) String keyword, HttpSession session) {

	    session.setAttribute("keyword", keyword);
	    ModelAndView mview = new ModelAndView();

	    // 페이징 처리에 필요한 변수선언
	    int perPage = 9;// 한페이지에 보여질 글의 갯수
	    int totalPage;// 총 페이지수
	    int start;// 각페이지에서 불러올 db의 시작번호
	    int perBlock = 5;// 몇개의 페이지번호씩 표현할것인가
	    int startPage;// 각 블럭에 표시할 시작페이지
	    int endPage;// 각 블럭에 표시할 마지막페이지

	    int totalCount=service.getSearchCount(keyword);
		// 총 페이지 갯수 구하기
	    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
	    // 각 블럭의 시작페이지
	    startPage = (currentPage - 1) / perBlock * perBlock + 1;
	    endPage = startPage + perBlock - 1;
	    if (endPage > totalPage)
	      endPage = totalPage;
	    // 각 페이지에서 불러올 시작번호
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
