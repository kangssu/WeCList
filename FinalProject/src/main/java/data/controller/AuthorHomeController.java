package data.controller;

import java.util.Enumeration;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import data.dto.AuthorHomeDto;
import data.dto.AuthorProfileDto;
import data.dto.ClassBoardDto;
import data.dto.FollowDto;
import data.dto.ShopBoardDto;
import data.dto.StoryDto;
import data.service.AuthorHomeService;
import data.service.AuthorProfileService;
import data.service.AuthorService;
import data.service.AuthorStoryService;
import data.service.ClassBoardService;
import data.service.ShopBoardService;

@Controller
public class AuthorHomeController {

  @Autowired
  AuthorHomeService service;

  @Autowired
  AuthorProfileService pservice;

  @Autowired
  AuthorStoryService sservice;

  @Autowired
  ShopBoardService sbservice;

  @Autowired
  AuthorService aservice;

  @Autowired
  ClassBoardService cbervice;

  @GetMapping("/author/home")
  public ModelAndView home(@RequestParam(value = "id", required = false) String id,
      HttpSession session) {

    ModelAndView mview = new ModelAndView();

    session.setAttribute("aid", id);
    String aid = (String) session.getAttribute("aid");

    AuthorHomeDto ahdto = service.getHList(aid);
    AuthorProfileDto apdto = pservice.GetIdData(aid);
    int totalCount = pservice.getTotalCount(aid);

    String from_id = (String) session.getAttribute("id");
    List<FollowDto> followTrue = aservice.getTrue(from_id);

    Enumeration se = session.getAttributeNames();

    while (se.hasMoreElements()) {
      String getse = se.nextElement() + "";
      System.out.println("@@@@@@@ session : " + getse + " : " + session.getAttribute(getse));
    }

    mview.addObject("ahdto", ahdto);
    mview.addObject("totalCount", totalCount);
    mview.addObject("followTrue", followTrue);
    mview.addObject("apdto", apdto);
    mview.setViewName("/4/author_home/home_profile");

    return mview;
  }

  @GetMapping("/author/story")
  public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage, HttpSession session) {

    ModelAndView mview = new ModelAndView();

    String aid = (String) session.getAttribute("aid");
    int totalCount = sservice.getTotalCount(aid);
    AuthorHomeDto ahdto = service.getHList(aid);

    String from_id = (String) session.getAttribute("id");
    List<FollowDto> followTrue = aservice.getTrue(from_id);

    int perPage = 9;
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

    List<StoryDto> list = service.getHSList(aid, start, perPage);

    int no = totalCount - (currentPage - 1) * perPage;

    mview.addObject("list", list);
    mview.addObject("ahdto", ahdto);
    mview.addObject("followTrue", followTrue);
    mview.addObject("aid", aid);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);

    mview.addObject("totalCount", totalCount);
    mview.setViewName("/4/author_home/home_story");

    return mview;
  }

  @GetMapping("/author/shop")
  public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage, HttpSession session,
      Model model) {
    ModelAndView mview = new ModelAndView();

    String aid = (String) session.getAttribute("aid");
    AuthorHomeDto ahdto = service.getHList(aid);

    String from_id = (String) session.getAttribute("id");
    List<FollowDto> followTrue = aservice.getTrue(from_id);

    int perPage = 8;
    int IdCount = service.getSangCount(aid);
    int IdPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    IdCount = service.getSangCount(aid);

    IdPage = IdCount / perPage + (IdCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > IdPage) {
      endPage = IdPage;
    }
    start = (currentPage - 1) * perPage;
    List<ShopBoardDto> list = service.getSangList(aid, start, perPage);

    int Idno = IdCount - (currentPage - 1) * perPage;
    mview.addObject("IdCount", IdCount);
    mview.addObject("list", list);
    mview.addObject("followTrue", followTrue);
    mview.addObject("ahdto", ahdto);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("IdPage", IdPage);
    mview.addObject("Idno", Idno);
    mview.addObject("currentPage", currentPage);
    mview.setViewName("/4/author_home/home_shop");

    return mview;
  }

  @GetMapping("/author/shop/content")
  public ModelAndView content(@RequestParam String num,
      @RequestParam(defaultValue = "1") int currentPage, @RequestParam(required = false) String key,
      HttpSession session) {
    ModelAndView mview = new ModelAndView();

    ShopBoardDto sdto = sbservice.getData(num);
    String aid = (String) session.getAttribute("aid");

    System.out.println(sdto.getMyid());
    String name = "as";
    sdto.setName(name);
    int dotLoc = sdto.getUploadfile1().lastIndexOf('.');
    String ext = sdto.getUploadfile1().substring(dotLoc + 1);
    if (ext.equalsIgnoreCase("jpg") || ext.equalsIgnoreCase("gif") || ext.equalsIgnoreCase("png")) {
      mview.addObject("bupload", true);
    } else {
      mview.addObject("bupload", false);

    }

    int perPage = 4;
    int totalCount = service.getSangCount(aid);
    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;
    totalCount = service.getSangCount(aid);
    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;
    if (endPage > totalPage) {
      endPage = totalPage;
    }
    start = (currentPage - 1) * perPage;
    List<ShopBoardDto> list = service.getSangList(aid, start, perPage);

    int no = totalCount - (currentPage - 1) * perPage;
    mview.addObject("totalCount", totalCount);
    mview.addObject("list", list);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);

    mview.addObject("sdto", sdto);
    mview.addObject("currentPage", currentPage);
    mview.setViewName("/shop/shop_view");
    return mview;
  }

  @GetMapping("/author/class")
  public ModelAndView getAlllist(@RequestParam(defaultValue = "1") int currentPage, HttpSession session,
	      Model model) {
    ModelAndView mview = new ModelAndView();

    String aid = (String) session.getAttribute("aid");
    AuthorHomeDto ahdto = service.getHList(aid);

    String from_id = (String) session.getAttribute("id");
    List<FollowDto> followTrue = aservice.getTrue(from_id);
    
    int perPage = 8;
    int IdCount = service.getClassCount(aid);
    int IdPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    IdCount = service.getSangCount(aid);

    IdPage = IdCount / perPage + (IdCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > IdPage) {
      endPage = IdPage;
    }
    start = (currentPage - 1) * perPage;
    List<ClassBoardDto> list = service.getClassList(aid, start, perPage);

    mview.addObject("IdCount", IdCount);
    mview.addObject("list", list);
    mview.addObject("ahdto", ahdto);
    mview.addObject("followTrue", followTrue);
    mview.setViewName("/4/author_home/home_class");
    return mview;
  }
}
