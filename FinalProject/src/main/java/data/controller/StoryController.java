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
import data.dto.AuthorStoryDto;
import data.service.AuthorStoryService;

@Controller
public class StoryController {

  @Autowired
  AuthorStoryService service;

  @GetMapping("/story/list")
  public String list() {
    return "/story/story_list";
  }


  ///////////// 여기 아래는 마이페이지 스토리 매핑! /////////////
  /*
   * @GetMapping("/mypage/story/list") public String story() { return "/1/author_mypage/story_list";
   * }
   */

  // 게시판 전체 출력
  @GetMapping("/mypage/story/list")
  public ModelAndView slist(@RequestParam(defaultValue = "1") int currentPage) {

    ModelAndView mview = new ModelAndView();

    int totalCount = service.getTotalCount();

    // 페이징 처리에 필요한 변수 선언
    int perPage = 10; // 한 페이지에 보여질 글의 갯수
    int totalPage; // 총 페이지 수
    int start; // 각 페이지에서 불러올 DB 시작 번호
    int perBlock = 5; // 블럭에 몇 개의 페이지씩 보여줄 것인지
    int startPage; // 각 블럭에 표시할 시작 페이지
    int endPage; // 각 블럭에 표시할 마지막 페이지


    // 총 페이지 갯수 구하기
    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

    // 각 블럭의 시작페이지
    startPage = (currentPage - 1) / perBlock * perBlock + 1;
    endPage = startPage + perBlock - 1;

    if (endPage > totalPage)
      endPage = totalPage;
    // 만약 총 페이지수가 22인 경우 위 계산대로 하면 endPage는 21~25까지 나타남
    // 이런 경우에는 endPage가 22가 되어야 함

    // 각 페이지에서 불러올 시작번호
    start = (currentPage - 1) * perPage;

    // 각 페이지에서 필요한 게시글 가져오기
    List<AuthorStoryDto> list = service.getList(start, perPage);

    // 각 페이지에 출력할 시작번호
    int no = totalCount - (currentPage - 1) * perPage;

    // 출력에 필한 변수들을 request에 저장
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


  @GetMapping("/mypage/story/view")
  public String view() {
    return "/1/author_mypage/story_view";
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
    // 내용으로 이동(insert 되면 getMaxNum이 생성 - 가장 최신 num이기 때문)
    // getMaxNum을 아래 content의 num에서 읽게됨!
    /* return "redirect:boardcontent?num=" + service.getMaxNum(); */
    return "redirect:/mypage/story/list";
  }
}
