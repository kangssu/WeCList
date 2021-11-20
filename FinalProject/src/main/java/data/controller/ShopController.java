package data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import data.dto.ShopBoardDto;
import data.service.ShopBoardService;

@Controller
public class ShopController {

  @Autowired
  ShopBoardService service;
  
 
  
  @GetMapping("/shop/list")
  public String list() {
    return "/shop/shop_list";
  }

  @GetMapping("/shop/view")
  public String view() {
    return "/shop/shop_view";
  }

  @GetMapping("/shop/buy")
  public String buy() {
    return "/shop/shop_buy";
  }

  @GetMapping("/shop/hotlist")
  public String hotlist() {
    return "/shop/shop_hot_list";
  }
  
  @GetMapping("/shop/writeform")
  public String writeform() {
    return "/shop/shop_write_form";
  }
  
  @PostMapping("/shop/insert")
  public String insert(@ModelAttribute ShopBoardDto sdto, HttpSession session) {
  
    //업로드할 폴더 저장
    String path = session.getServletContext().getRealPath("/photo");
    //업로드할 파일  명
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
    
    if(sdto.getUpload().getOriginalFilename().equals("")) {
      sdto.setUploadfile("no");
    }else {
      String uploadfile  = "f"+ sdf.format(new Date())+sdto.getUpload().getOriginalFilename();
      sdto.setUploadfile(uploadfile);
      
      try {
        sdto.getUpload().transferTo(new File(path+"\\"+uploadfile));
      }catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }
   //세션에서 아이디를 얻어서 dto에 저장
    String myid = (String) session.getAttribute("myid");
    sdto.setMyid(myid);
    
    service.insertBoard(sdto);
    return "redirect:content?num="+service.getMaxNum();
  }
  
}
