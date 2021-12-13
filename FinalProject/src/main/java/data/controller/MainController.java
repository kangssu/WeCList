package data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.InterDto;
import data.dto.ShopBoardDto;
import data.dto.StoryDto;
import data.dto.UserDto;
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

  private final Logger LOGGER = LoggerFactory.getLogger(MainController.class);

  @GetMapping("/")
  public ModelAndView mainlist(@RequestParam(defaultValue = "1") int currentPage,
      HttpSession session, Model model) {
    String id = (String) session.getAttribute("id"); // 세션값 얻어오기
    String nickname = umapper.getNickName(id);
    // System.out.println(nickname);
    model.addAttribute("nickname", nickname);

    String profileimg = umapper.getImg(id);
    model.addAttribute("profileimg", profileimg);

    ModelAndView mview = new ModelAndView();
    List<ShopBoardDto> listpopul = shmapper.getPopular();
    int perPage = 15;
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
    List<ClassBoardDto> listnewsMain = mapper.getAllnewlist();
    List<ClassBoardDto> listpopulMain = mapper.getPopular();
    List<InterDto> inter=mapper.getInter();
    List<ClassBoardDto> listseven=mapper.getSevendays();

    mview.addObject("listMain", listMain);
    mview.addObject("listnewsMain", listnewsMain);
    mview.addObject("listpopulMain", listpopulMain);
    mview.addObject("inter", inter);
    mview.addObject("listseven", listseven);
    mview.setViewName("/2/inc/class");
    return mview;
  }

  @GetMapping("/off/info")
  public String list() {
    return "/inc/offline_inf";
  }

  @GetMapping("/search")
  public ModelAndView shopSearch(
      @RequestParam(defaultValue = "1") int currentPage,
      @RequestParam(value = "keyword", required = false) String keyword, HttpSession session) {

    session.setAttribute("keyword", keyword);
    ModelAndView mview = new ModelAndView();

    // ����¡ ó���� �ʿ��� ��������
    int perPage = 9;// ���������� ������ ���� ����
    int totalPage;// �� ��������
    int start;// ������������ �ҷ��� db�� ���۹�ȣ
    int perBlock = 5;// ��� ��������ȣ�� ǥ���Ұ��ΰ�
    int startPage;// �� ���� ǥ���� ����������
    int endPage;// �� ���� ǥ���� ������������

    int totalCount=service.getSearchTotal();
	// �� ������ ���� ���ϱ�
    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    // �� ���� ����������
    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;
    if (endPage > totalPage)
      endPage = totalPage;
    // �� ���������� �ҷ��� ���۹�ȣ
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
    mview.setViewName("/search");
    return mview;
  }

  @ResponseBody
  @PostMapping("/main/getCartCount")
  public int getCartCount(@RequestParam String user_id){
    LOGGER.info("id = " + user_id);
    LOGGER.info("getCartCound = " + service.getCartCount(user_id));
    return service.getCartCount(user_id);
  }
}
