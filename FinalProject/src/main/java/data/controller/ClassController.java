package data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.dto.HeartDto;
import data.dto.InterDto;
import data.mapper.ClassBoardMapper;
import data.service.ClassBoardService;

@Controller
public class ClassController {

  @Autowired
  ClassBoardService service;

  @Autowired
  ClassBoardMapper mapper;

  @GetMapping("/class/list")
  public ModelAndView getAlllist(@RequestParam(defaultValue = "1") int currentPage) {
    ModelAndView mview = new ModelAndView();

    int perPage = 4;
    int totalCount = service.getTotalCount();
    int totalPage;
    int IdPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > totalPage) {
      endPage = totalPage;
    }

    start = (currentPage - 1) * perPage;

    List<ClassBoardDto> list = mapper.getAlllist();

    int no = totalCount - (currentPage - 1) * perPage;
    mview.addObject("totalCount", totalCount);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);
    mview.addObject("list", list);
    mview.setViewName("/6/class/class_list");
    return mview;
  }

  @GetMapping("/class/category")
  public ModelAndView getCategory(
      @RequestParam(value = "class_op_cate", required = false) String class_op_cate,
      @RequestParam(defaultValue = "1") int currentPage,
      @RequestParam(required = false) String key) {
    ModelAndView mview = new ModelAndView();
    int perPage = 4;
    int totalCount = service.getCaCount(class_op_cate);
    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;
    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;
    if (endPage > totalPage) {
      endPage = totalPage;
    }

    start = (currentPage - 1) * perPage;
    int no = totalCount - (currentPage - 1) * perPage;

    List<ClassBoardDto> listcate = service.getCategory(class_op_cate, start, perPage);

    mview.addObject("listcate", listcate);
    mview.addObject("totalCount", totalCount);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);

    mview.addObject("class_op_cate", class_op_cate);
    mview.addObject("currentPage", currentPage);
    mview.setViewName("/6/class/class_category");
    return mview;
  }

  @GetMapping("/class/view")
  public ModelAndView view(@RequestParam String num, HttpSession session) {
    ModelAndView mview = new ModelAndView();

    String userid = (String) session.getAttribute("id");
    String InterCount = service.getInterCount(num);
    System.out.println(InterCount);

    List<ClassBoardDto> classlist = mapper.getAlllist();
    ClassBoardDto dto = service.getData(num);

    List<HeartDto> heartTrue = service.getTrue(num);
    List<InterDto> interTrue = service.getTrueInter(num);

    int dotLoc = dto.getUploadfile().lastIndexOf(".");
    String ext = dto.getUploadfile().substring(dotLoc + 1);

    if (ext.equalsIgnoreCase("jpg") || ext.equalsIgnoreCase("gif") || ext.equalsIgnoreCase("png")
        || ext.equalsIgnoreCase("jpeg"))
      mview.addObject("bupload", true);
    else
      mview.addObject("bupload", false);

    mview.addObject("classlist", classlist);
    mview.addObject("dto", dto);
    mview.addObject("heartTrue", heartTrue);
    mview.addObject("interTrue", interTrue);
    mview.addObject("InterCount", InterCount);

    mview.setViewName("/2/class/class_view");
    return mview;
  }

  @GetMapping("/class/news")
  public ModelAndView getAllnewlist() {
    ModelAndView mview = new ModelAndView();
    List<ClassBoardDto> list = mapper.getAlllist();
    List<ClassBoardDto> listseven = mapper.getSevendays();

    mview.addObject("list", list);
    mview.addObject("listseven", listseven);
    // mview.addObject("listnewsunder", listnewsunder);
    mview.setViewName("/2/class/class_news");// tiles �� /������/���ϸ� �����̴�
    return mview;
  }

  @GetMapping("/class/popul")
  public ModelAndView getPopular() {
    ModelAndView mview = new ModelAndView();
    List<HeartDto> HotClass = mapper.getHotClass();
    List<ClassBoardDto> listpopul = mapper.getPopular();

    mview.addObject("HotClass", HotClass);
    mview.addObject("listpopul", listpopul);
    mview.setViewName("/2/class/class_popular");

    return mview;
  }

  // @GetMapping("/class/news")
  // public String news() {
  // return "/2/class/class_news";
  // }

  @GetMapping("/class/addform")
  public String addform() {
    return "/2/class/m_class_write_form";
  }

  @PostMapping("/class/insert")
  public String insert(@ModelAttribute ClassBoardDto cdto, HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");

    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    if (cdto.getUpload().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile(uploadfile);

      try {
        cdto.getUpload().transferTo(new File(path + "/" + uploadfile));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload1().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile1 = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile1(uploadfile1);

      try {
        cdto.getUpload1().transferTo(new File(path + "/" + uploadfile1));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload2().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile2 = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile2(uploadfile2);

      try {
        cdto.getUpload2().transferTo(new File(path + "/" + uploadfile2));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload3().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile3 = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile3(uploadfile3);

      try {
        cdto.getUpload3().transferTo(new File(path + "/" + uploadfile3));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload4().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile4 = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile4(uploadfile4);

      try {
        cdto.getUpload4().transferTo(new File(path + "/" + uploadfile4));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload5().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile5 = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile5(uploadfile5);

      try {
        cdto.getUpload5().transferTo(new File(path + "/" + uploadfile5));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    String myid = (String) session.getAttribute("myid");
    cdto.setMyid(myid);

    service.insertBoard(cdto);
    return "redirect:/class/addform";
  }

  @PostMapping("/class/insertnew")
  public String insertnew(@ModelAttribute ClassNewBoardDto cndto, HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");

    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    if (cndto.getUpload().getOriginalFilename().equals("")) {
      cndto.setUploadfile("no");
    } else {
      String uploadfile = "f" + sdf.format(new Date()) + cndto.getUpload().getOriginalFilename();
      cndto.setUploadfile(uploadfile);

      try {
        cndto.getUpload().transferTo(new File(path + "/" + uploadfile));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    String myid = (String) session.getAttribute("myid");
    cndto.setMyid(myid);

    service.insertNewBoard(cndto);
    return "redirect:/class/addnewform";
  }

}


