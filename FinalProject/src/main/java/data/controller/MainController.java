package data.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.ShopBoardDto;
import data.dto.StoryDto;
import data.mapper.MainMapper;
import data.mapper.ShopBoardMapper;
import data.mapper.UserMapper;
import data.service.MainService;
import data.service.ShopBoardService;

@Controller
public class MainController {

  @Autowired
  MainMapper mapper;

  @Autowired
  MainService service;

  @Autowired
  ShopBoardService shservice;

  @Autowired
  ShopBoardMapper shmapper;

  @Autowired
  UserMapper umapper;

  @GetMapping("/")
  public ModelAndView mainlist(@RequestParam(defaultValue = "1") int currentPage,
      HttpSession session, Model model) {
    String id = (String) session.getAttribute("id"); // 세션값 얻어오기
    String nickname = umapper.getNickName(id);
    // System.out.println(nickname);
    model.addAttribute("nickname", nickname);

    ModelAndView mview = new ModelAndView();
    List<ShopBoardDto> listpopul = shmapper.getPopular();
    int perPage = 4;// 한페이지에 보여질 글의 갯수
    int totalCount = shservice.getTotalCount();

    int totalPage;// 총페이지
    int start;// 각페이젱서 불러올 시작 번호
    int perBlock = 5;// 몇개의 페이지 번호씩 표현할것인가
    int startPage;// 각블럭에 표시할 시작페이지
    int endPage;// 각블럭에 표시할 마지막페이지

    // 총 갯수

    totalCount = shservice.getTotalCount();
    // 현재 페이지 번호 읽기(단 null 일 경우 1페이지로 설정)

    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    // 각 블럭의 시작페이지
    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > totalPage) {
      endPage = totalPage;
    }
    // 각 페이지에서 불러올 시작번호
    start = (currentPage - 1) * perPage;
    // 각페이지에서 필요한 게시글 가져오기
    List<ShopBoardDto> list = shservice.getList(start, perPage);

    System.out.println(list.size());
    for (ShopBoardDto d : list) {
      String name = "col";
      d.setName(name);
    }
    int no = totalCount - (currentPage - 1) * perPage;
    mview.addObject("totalCount", totalCount);
    mview.addObject("list", list);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);
    mview.addObject("listpopul", listpopul);
    mview.addObject("Newlist", list);
    mview.setViewName("/inc/main");

    // 스토리 메인출력
    List<StoryDto> MainStoryList = service.getMainStoryList();
    int StorytotalCount = service.getStoryTotalCount();

    mview.addObject("MainStoryList", MainStoryList);
    mview.addObject("StorytotalCount", StorytotalCount);

    return mview;
  }

  @GetMapping("/class")
  public ModelAndView getMain() {
    ModelAndView mview = new ModelAndView();
    List<ClassBoardDto> listMain = mapper.getAlllist();
    List<ClassNewBoardDto> listnewsMain = mapper.getAllnewlist();
    List<ClassBoardDto> listpopulMain = mapper.getPopular();

    mview.addObject("listMain", listMain);
    mview.addObject("listnewsMain", listnewsMain);
    mview.addObject("listpopulMain", listpopulMain);
    mview.setViewName("/2/inc/class");
    return mview;
  }
}
