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
import data.dto.AuthorStoryDto;
import data.service.AuthorStoryService;

@Controller
public class AuthorStoryController {

  @Autowired
  AuthorStoryService service;

  ///////////// 여기 아래는 마이페이지 스토리 매핑! /////////////

  // 게시판 전체 출력
  @GetMapping("/mypage/story/list")
  public ModelAndView slist(@RequestParam(defaultValue = "1") int currentPage) {

    ModelAndView mview = new ModelAndView();

    int totalCount = service.getTotalCount("kang");
    // System.out.println(totalCount); //제대로 넘어감!(3)

    int perPage = 10;
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

    List<AuthorStoryDto> list = service.getList("kang", start, perPage);

    int no = totalCount - (currentPage - 1) * perPage;

    mview.addObject("list", list);
    mview.addObject("startPage", startPage);
    mview.addObject("endPage", endPage);
    mview.addObject("totalPage", totalPage);
    mview.addObject("no", no);
    mview.addObject("currentPage", currentPage);

    mview.addObject("totalCount", totalCount);
    mview.setViewName("/1/author_mypage/story_list");

    return mview;
  }

  // 등록폼으로 이동!
  @GetMapping("/mypage/story/form")
  public String form() {
    return "/1/author_mypage/story_write_form";
  }

  // 스토리 작성!
  @PostMapping("/mypage/sinsert")
  public String insert(@ModelAttribute AuthorStoryDto dto, HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    if (dto.getUpload().getOriginalFilename().equals("")) {
      dto.setThumbnail_file("no");
    } else {// 업로드 한경우!
      String uploadfile =
          "f" + sdf.format(new Date()) + "_" + dto.getUpload().getOriginalFilename();
      dto.setThumbnail_file(uploadfile);

      // 실제 업로드
      try {
        dto.getUpload().transferTo(new File(path + "\\" + uploadfile));
      } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
      }
    }

    // insert
    service.insertStory(dto);

    return "redirect:/mypage/story/view?num=" + service.getMaxNum();
  }

  // insert 이후 contet 내용보기로 이동!
  @GetMapping("/mypage/story/view")
  public ModelAndView view(@RequestParam String num,
      @RequestParam(defaultValue = "1") int currentPage) {
    ModelAndView mview = new ModelAndView();

    AuthorStoryDto dto = service.getData(num);

    mview.addObject("dto", dto);
    mview.addObject("currentPage", currentPage);
    mview.setViewName("/1/author_mypage/story_view");
    return mview;
  }

  // 수정폼으로 이동!
  @GetMapping("/mypage/story/updateform")
  public ModelAndView updateForm(String num, String currentPage) {

    ModelAndView mview = new ModelAndView();

    AuthorStoryDto dto = service.getData(num);

    mview.addObject("dto", dto);
    mview.addObject("currentPage", currentPage);
    mview.setViewName("/1/author_mypage/story_update_form");
    return mview;
  }

  // 스토리 수정!
  @PostMapping("/mypage/supdate")
  public String update(@ModelAttribute AuthorStoryDto dto, String currentPage,
      HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    if (dto.getUpload().getOriginalFilename().equals("")) {
      dto.setThumbnail_file("no");
    } else {// 업로드 한경우!
      String uploadfile =
          "f" + sdf.format(new Date()) + "_" + dto.getUpload().getOriginalFilename();
      dto.setThumbnail_file(uploadfile);

      // 실제 업로드
      try {
        dto.getUpload().transferTo(new File(path + "\\" + uploadfile));
      } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
      }
    }

    // update
    service.updateStory(dto);

    return "redirect:/mypage/story/view?num=" + dto.getNum() + "&currentPage=" + currentPage;
  }

  // 스토리 삭제! (자꾸 null이라고 나옴 ㅠ)
  @GetMapping("/mypage/sdelete")
  public String delete(@RequestParam(required = false) String num, String currentPage,
      HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");
    MultipartFile uploadfile = service.getData(num).getUpload();
    File file = new File(path + "\\" + uploadfile);

    // 파일삭제
    file.delete();

    service.deleteStory(num);
    return "redirect:/mypage/story/list?currentPage" + currentPage;
  }
}
