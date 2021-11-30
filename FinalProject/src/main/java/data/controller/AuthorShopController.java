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
import data.dto.ShopBoardDto;
import data.service.AuthorStoryService;
import data.service.ShopBoardService;

@Controller
public class AuthorShopController {

  @Autowired
  ShopBoardService service;

  @GetMapping("/mypage/shop/content")
  public ModelAndView content(@RequestParam String num,
                              @RequestParam(defaultValue = "1") int currentPage,
                              @RequestParam(required = false) String key) {
      ModelAndView mview = new ModelAndView();

      //목록에서 key에 list를 보낼 경우에 만 조회수 증가
      if (key != null) {
          service.updateReadCount(num);
      }

      ShopBoardDto sdto = service.getData(num);

      System.out.println(sdto.getMyid());
      //dto의 name에 작성자 이름 넣기
      String name = "as";
      sdto.setName(name);
      //업로드 파일의 확장자 얻기
      int dotLoc = sdto.getUploadfile1().lastIndexOf('.');
      String ext = sdto.getUploadfile1().substring(dotLoc + 1);
      if (ext.equalsIgnoreCase("jpg") || ext.equalsIgnoreCase("gif") || ext.equalsIgnoreCase("png")) {
          mview.addObject("bupload", true);
      } else {
          mview.addObject("bupload", false);

      }
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////

      int perPage = 4;//한페이지에 보여질 글의 갯수
      int totalCount = service.getTotalCount();

      int totalPage;//총페이지
      int start;//각페이젱서 불러올 시작 번호
      int perBlock = 5;//몇개의 페이지 번호씩 표현할것인가
      int startPage;//각블럭에 표시할 시작페이지
      int endPage;//각블럭에 표시할 마지막페이지

      //총 갯수

      totalCount = service.getTotalCount();
      //현재 페이지 번호 읽기(단 null 일 경우 1페이지로 설정)

      totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
      //각 블럭의 시작페이지
      startPage = (currentPage - 1) / perBlock * perBlock + 1;

      endPage = startPage + perBlock - 1;
      if (endPage > totalPage) {
          endPage = totalPage;
      }
      //각 페이지에서 불러올 시작번호
      start = (currentPage - 1) * perPage;
      //각페이지에서 필요한 게시글 가져오기
      List<ShopBoardDto> list = service.getList(start, perPage);

      System.out.println(list.size());
      for (ShopBoardDto d : list) {

          d.setName(name);
      }
      int no = totalCount - (currentPage - 1) * perPage;
      mview.addObject("totalCount", totalCount);
      mview.addObject("list", list);
      mview.addObject("startPage", startPage);
      mview.addObject("endPage", endPage);
      mview.addObject("totalPage", totalPage);
      mview.addObject("no", no);


      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////

      mview.addObject("sdto", sdto);
      mview.addObject("currentPage", currentPage);
      mview.setViewName("/shop/shop_view");
      return mview;
  }
  // 게시판 전체 출력
  @GetMapping("/mypage/shop/list")
  public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage, HttpSession session
      ) {
    ModelAndView mview = new ModelAndView();
    int perPage = 8;//한페이지에 보여질 글의 갯수
    int totalCount = service.getTotalCount();

    int totalPage;//총페이지
    int start;//각페이젱서 불러올 시작 번호
    int perBlock = 5;//몇개의 페이지 번호씩 표현할것인가
    int startPage;//각블럭에 표시할 시작페이지
    int endPage;//각블럭에 표시할 마지막페이지

    //총 갯수

    totalCount = service.getTotalCount();
    //현재 페이지 번호 읽기(단 null 일 경우 1페이지로 설정)

    session.setAttribute("ttcount",totalCount);
    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    //각 블럭의 시작페이지
    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > totalPage) {
        endPage = totalPage;
    }
    //각 페이지에서 불러올 시작번호
    start = (currentPage - 1) * perPage;
    //각페이지에서 필요한 게시글 가져오기
    List<ShopBoardDto> list = service.getList(start, perPage);

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
    mview.setViewName("/1/author_mypage/m_shop_list");

    return mview;
}
  
  
  
  @GetMapping("/mypage/shopdelete")
  public String delete(@RequestParam(required = false) String num, String currentPage,
      HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");
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

    // 파일삭제
    file1.delete();
    file2.delete();
    file3.delete();
    file4.delete();
    file5.delete();

    service.deleteBoard(Integer.parseInt(num));
    return "redirect:/mypage/shop/list?currentPage="+currentPage;
  }
}
