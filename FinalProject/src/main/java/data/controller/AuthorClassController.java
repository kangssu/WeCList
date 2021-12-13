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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import data.dto.ClassBoardDto;
import data.mapper.AuthortClassMapper;
import data.service.AuthorClassService;

@Controller
public class AuthorClassController {

  @Autowired
  AuthorClassService service;

  @Autowired
  AuthortClassMapper mapper;

  @GetMapping("mypage/class/list")
  public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage, HttpSession session) {
    ModelAndView mview = new ModelAndView();
    String from_id = (String) session.getAttribute("id");

    int perPage = 8;
    int IdCount = service.getIdCount(from_id);
    int IdPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;

    IdCount = service.getIdCount(from_id);

    IdPage = IdCount / perPage + (IdCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > IdPage) {
      endPage = IdPage;
    }
    start = (currentPage - 1) * perPage;
    List<ClassBoardDto> list = service.getList(start, perPage);

    int Idno = IdCount - (currentPage - 1) * perPage;
    mview.addObject("IdCount", IdCount);
    mview.addObject("list", list);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("IdPage", IdPage);
    mview.addObject("Idno", Idno);
    mview.addObject("currentPage", currentPage);
    mview.setViewName("/1/author_mypage/m_class_list");

    return mview;
  }

  @GetMapping("/mypage/class/addform")
  public String addform() {
    return "/1/author_mypage/m_class_write_form";
  }

  @PostMapping("/mypage/class/insert")
  public String insert(@ModelAttribute ClassBoardDto cdto, HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");

    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    if (cdto.getUpload().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile(uploadfile);

      try {
        cdto.getUpload().transferTo(new File(path + "\\" + uploadfile));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload1().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile1 = "f" + sdf.format(new Date()) + cdto.getUpload1().getOriginalFilename();
      cdto.setUploadfile1(uploadfile1);

      try {
        cdto.getUpload1().transferTo(new File(path + "\\" + uploadfile1));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload2().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile2 = "f" + sdf.format(new Date()) + cdto.getUpload2().getOriginalFilename();
      cdto.setUploadfile2(uploadfile2);

      try {
        cdto.getUpload2().transferTo(new File(path + "\\" + uploadfile2));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload3().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile3 = "f" + sdf.format(new Date()) + cdto.getUpload3().getOriginalFilename();
      cdto.setUploadfile3(uploadfile3);

      try {
        cdto.getUpload3().transferTo(new File(path + "\\" + uploadfile3));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload4().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile4 = "f" + sdf.format(new Date()) + cdto.getUpload4().getOriginalFilename();
      cdto.setUploadfile4(uploadfile4);

      try {
        cdto.getUpload4().transferTo(new File(path + "\\" + uploadfile4));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    if (cdto.getUpload5().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile5 = "f" + sdf.format(new Date()) + cdto.getUpload5().getOriginalFilename();
      cdto.setUploadfile5(uploadfile5);

      try {
        cdto.getUpload5().transferTo(new File(path + "\\" + uploadfile5));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    service.insertBoard(cdto);
    return "redirect:/mypage/class/list";
  }

  @GetMapping("/mypage/classdelete")
  public String delete(@RequestParam(required = false) String num, String currentPage,
      HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");
    MultipartFile uploadfile = service.getData(num).getUpload1();
    File file = new File(path + "\\" + uploadfile);

    MultipartFile uploadfile1 = service.getData(num).getUpload1();
    File file1 = new File(path + "\\" + uploadfile1);

    MultipartFile uploadfile2 = service.getData(num).getUpload2();
    File file2 = new File(path + "\\" + uploadfile2);

    MultipartFile uploadfile3 = service.getData(num).getUpload3();
    File file3 = new File(path + "\\" + uploadfile3);

    MultipartFile uploadfile4 = service.getData(num).getUpload4();
    File file4 = new File(path + "\\" + uploadfile4);

    MultipartFile uploadfile5 = service.getData(num).getUpload5();
    File file5 = new File(path + "\\" + uploadfile5);

    // ���� ��ü ����
    file1.delete();
    file2.delete();
    file3.delete();
    file4.delete();
    file5.delete();

    service.deleteBoard(Integer.parseInt(num));
    return "redirect:/mypage/class/list";
  }

  @GetMapping("/mypage/class/updateform")
  public ModelAndView updateForm(String num, String currentPage) {

    ModelAndView mview = new ModelAndView();

    ClassBoardDto dto = service.getData(num);

    mview.addObject("dto", dto);
    mview.addObject("currentPage", currentPage);
    mview.setViewName("/1/author_mypage/m_class_update_form");
    return mview;
  }

  @PostMapping("/mypage/class/update")
  public String update(@ModelAttribute ClassBoardDto cdto, String currentPage,
      HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    if (cdto.getUpload().getOriginalFilename().equals("")) {
      cdto.setUploadfile("no");
    } else {
      String uploadfile = "f" + sdf.format(new Date()) + cdto.getUpload().getOriginalFilename();
      cdto.setUploadfile(uploadfile);

      try {
        cdto.getUpload().transferTo(new File(path + "\\" + uploadfile));
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
        cdto.getUpload1().transferTo(new File(path + "\\" + uploadfile1));
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
        cdto.getUpload2().transferTo(new File(path + "\\" + uploadfile2));
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
        cdto.getUpload3().transferTo(new File(path + "\\" + uploadfile3));
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
        cdto.getUpload4().transferTo(new File(path + "\\" + uploadfile4));
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
        cdto.getUpload5().transferTo(new File(path + "\\" + uploadfile5));
      } catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }

    // update
    service.updateBoard(cdto);

    return "redirect:/mypage/class/view?num=" + cdto.getNum() + "&currentPage=" + currentPage;
  }

}
