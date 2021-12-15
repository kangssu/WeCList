package data.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
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
import data.dto.HeartDto;
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

  @GetMapping("/")
  public ModelAndView mainlist(@RequestParam(defaultValue = "1") int currentPage,
      HttpSession session, Model model) {

    String id = (String) session.getAttribute("id");
    String nickname = umapper.getNickName(id);
    model.addAttribute("nickname", nickname);
    
    String profileimg = umapper.getImg(id);
    model.addAttribute("profileimg", profileimg);

    ModelAndView mview = new ModelAndView();
    List<ShopBoardDto> listpopul = shmapper.getPopular();
    int perPage = 15;
    int totalCount = shservice.getTotalCount();

    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    totalCount = shservice.getTotalCount();

    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > totalPage) {
      endPage = totalPage;
    }

    start = (currentPage - 1) * perPage;

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
    List<ClassBoardDto> listseven=mapper.getSevendays();
    List<HeartDto> HotClass=mapper.getHotClass();

    mview.addObject("listMain", listMain);
    mview.addObject("listnewsMain", listnewsMain);
    mview.addObject("listpopulMain", listpopulMain);
    mview.addObject("listseven", listseven);
    mview.addObject("HotClass", HotClass);
    mview.setViewName("/2/inc/class");
    return mview;
  }
  
  @GetMapping("/off/info")
  public String list() {
    return "/inc/offline_inf";
  }

  @ResponseBody
  @PostMapping("/main/getCartCount")
  public int getCartCount(@RequestParam String user_id){return service.getCartCount(user_id);  }
  
  
}