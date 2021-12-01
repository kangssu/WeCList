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

      //紐⑸줉�뿉�꽌 key�뿉 list瑜� 蹂대궪 寃쎌슦�뿉 留� 議고쉶�닔 利앷�
      if (key != null) {
          service.updateReadCount(num);
      }

      ShopBoardDto sdto = service.getData(num);

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
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////
      /////////////////////////////////////////////////////

      int perPage = 4;
      int totalCount = service.getTotalCount();

      int totalPage;
      int start;
      int perBlock = 5;
      int startPage;
      int endPage;

      totalCount = service.getTotalCount();

      totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
      startPage = (currentPage - 1) / perBlock * perBlock + 1;

      endPage = startPage + perBlock - 1;
      if (endPage > totalPage) {
          endPage = totalPage;
      }
   
      start = (currentPage - 1) * perPage;
      
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
  
  @GetMapping("/mypage/shop/list")
  public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage, HttpSession session
      ) {
    ModelAndView mview = new ModelAndView();
    int perPage = 8;
    int totalCount = service.getTotalCount();

    int totalPage;
    int start;
    int perBlock = 5;
    int startPage;
    int endPage;


    totalCount = service.getTotalCount();

    session.setAttribute("ttcount",totalCount);
    totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
    startPage = (currentPage - 1) / perBlock * perBlock + 1;

    endPage = startPage + perBlock - 1;
    if (endPage > totalPage) {
        endPage = totalPage;
    }
    start = (currentPage - 1) * perPage;
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

    //사진 삭제
    file1.delete();
    file2.delete();
    file3.delete();
    file4.delete();
    file5.delete();

    service.deleteBoard(Integer.parseInt(num));
    return "redirect:/mypage/shop/list?currentPage="+currentPage;
  }
}
