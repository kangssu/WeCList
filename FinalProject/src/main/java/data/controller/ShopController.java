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

import data.dto.ShopBoardDto;
import data.service.ShopBoardService;

@Controller
public class ShopController {

  @Autowired
  ShopBoardService service;
  
  

  @GetMapping("/shop/content")
  public ModelAndView content(@RequestParam String num,
      @RequestParam(defaultValue = "1") int currentPage,
      @RequestParam(required = false) String key)
  {
    ModelAndView mview = new ModelAndView();    
    
    //목록에서 key에 list를 보낼 경우에 만 조회수 증가
    if(key!=null) {
      service.updateReadCount(num);
    }
    
    ShopBoardDto sdto = service.getData(num);
    
    System.out.println(sdto.getMyid());
    //dto의 name에 작성자 이름 넣기
    String name = "as";
    sdto.setName(name);
    //업로드 파일의 확장자 얻기
    int dotLoc = sdto.getUploadfile().lastIndexOf('.');
    String ext = sdto.getUploadfile().substring(dotLoc+1);
    if(ext.equalsIgnoreCase("jpg")||ext.equalsIgnoreCase("gif")||ext.equalsIgnoreCase("png")) {
      mview.addObject("bupload",true);
    }else {
      mview.addObject("bupload",false);
      
    }
     /////////////////////////////////////////////////////
    /////////////////////////////////////////////////////
    /////////////////////////////////////////////////////
    /////////////////////////////////////////////////////
    
    int perPage = 4;//한페이지에 보여질 글의 갯수
    int totalCount = service.getTotalCount();
   
    int totalPage;//총페이지
    int start;//각페이젱서 불러올 시작 번호
    int perBlock=5;//몇개의 페이지 번호씩 표현할것인가
    int startPage;//각블럭에 표시할 시작페이지
    int endPage;//각블럭에 표시할 마지막페이지

    //총 갯수

    totalCount = service.getTotalCount();
    //현재 페이지 번호 읽기(단 null 일 경우 1페이지로 설정)
  
    totalPage = totalCount/perPage+(totalCount%perPage==0?0:1);
    //각 블럭의 시작페이지
    startPage = (currentPage-1)/perBlock*perBlock+1;

    endPage =startPage+perBlock-1;
    if(endPage>totalPage){
      endPage =totalPage;
    }
    //각 페이지에서 불러올 시작번호
    start = (currentPage-1)*perPage;
    //각페이지에서 필요한 게시글 가져오기
    List<ShopBoardDto> list = service.getList(start, perPage);

    System.out.println(list.size());
    for(ShopBoardDto d:list) {
      
      d.setName(name);
    }
    int no = totalCount - (currentPage-1)*perPage;
    mview.addObject("totalCount",totalCount);
    mview.addObject("list",list);
    mview.addObject("startPage",startPage);
    mview.addObject("endPage",endPage);
    mview.addObject("totalPage",totalPage);
    mview.addObject("no",no);
    
    
    /////////////////////////////////////////////////////
    /////////////////////////////////////////////////////
    /////////////////////////////////////////////////////
    /////////////////////////////////////////////////////
    /////////////////////////////////////////////////////
      
    mview.addObject("sdto",sdto);
    mview.addObject("currentPage",currentPage);
    mview.setViewName("/shop/shop_view");
    return mview;
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
  
  
  @GetMapping("/shop/list")
  public ModelAndView list(
      @RequestParam(defaultValue = "1") int currentPage
      ) {
    ModelAndView mview = new ModelAndView();
    
    int perPage = 4;//한페이지에 보여질 글의 갯수
    int totalCount = service.getTotalCount();
   
    int totalPage;//총페이지
    int start;//각페이젱서 불러올 시작 번호
    int perBlock=5;//몇개의 페이지 번호씩 표현할것인가
    int startPage;//각블럭에 표시할 시작페이지
    int endPage;//각블럭에 표시할 마지막페이지

    //총 갯수

    totalCount = service.getTotalCount();
    //현재 페이지 번호 읽기(단 null 일 경우 1페이지로 설정)
  
    totalPage = totalCount/perPage+(totalCount%perPage==0?0:1);
    //각 블럭의 시작페이지
    startPage = (currentPage-1)/perBlock*perBlock+1;

    endPage =startPage+perBlock-1;
    if(endPage>totalPage){
      endPage =totalPage;
    }
    //각 페이지에서 불러올 시작번호
    start = (currentPage-1)*perPage;
    //각페이지에서 필요한 게시글 가져오기
    List<ShopBoardDto> list = service.getList(start, perPage);

    System.out.println(list.size());
    for(ShopBoardDto d:list) {
       String name="col";
      d.setName(name);
    }
    int no = totalCount - (currentPage-1)*perPage;
    mview.addObject("totalCount",totalCount);
    mview.addObject("list",list);
    mview.addObject("startPage",startPage);
    mview.addObject("endPage",endPage);
    mview.addObject("totalPage",totalPage);
    mview.addObject("no",no);
    mview.addObject("currentPage",currentPage);
    mview.setViewName("/shop/shop_list");
    
    return mview;
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
    
    if(sdto.getUpload1().getOriginalFilename().equals("")) {
      sdto.setUploadfile1("no");
    }else {
      String uploadfile1  = "f"+ sdf.format(new Date())+sdto.getUpload1().getOriginalFilename();
      sdto.setUploadfile1(uploadfile1);
      
      try {
        sdto.getUpload1().transferTo(new File(path+"\\"+uploadfile1));
      }catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }
    
    if(sdto.getUpload2().getOriginalFilename().equals("")) {
      sdto.setUploadfile2("no");
    }else {
      String uploadfile2  = "f"+ sdf.format(new Date())+sdto.getUpload2().getOriginalFilename();
      sdto.setUploadfile2(uploadfile2);
      
      try {
        sdto.getUpload2().transferTo(new File(path+"\\"+uploadfile2));
      }catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }
    
    if(sdto.getUpload3().getOriginalFilename().equals("")) {
      sdto.setUploadfile3("no");
    }else {
      String uploadfile3  = "f"+ sdf.format(new Date())+sdto.getUpload3().getOriginalFilename();
      sdto.setUploadfile3(uploadfile3);
      
      try {
        sdto.getUpload3().transferTo(new File(path+"\\"+uploadfile3));
      }catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }
    
    if(sdto.getUpload4().getOriginalFilename().equals("")) {
      sdto.setUploadfile4("no");
    }else {
      String uploadfile4  = "f"+ sdf.format(new Date())+sdto.getUpload4().getOriginalFilename();
      sdto.setUploadfile4(uploadfile4);
      
      try {
        sdto.getUpload4().transferTo(new File(path+"\\"+uploadfile4));
      }catch (IllegalStateException | IOException e) {
        // TODO: handle exception
        e.printStackTrace();
      }
    }
    
    if(sdto.getUpload5().getOriginalFilename().equals("")) {
      sdto.setUploadfile5("no");
    }else {
      String uploadfile5  = "f"+ sdf.format(new Date())+sdto.getUpload5().getOriginalFilename();
      sdto.setUploadfile5(uploadfile5);
      
      try {
        sdto.getUpload5().transferTo(new File(path+"\\"+uploadfile5));
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
