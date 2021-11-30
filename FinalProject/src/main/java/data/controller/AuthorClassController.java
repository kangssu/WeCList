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
import data.mapper.AuthortClassMapper;
import data.service.AuthorClassService;

@Controller
public class AuthorClassController {
	
	@Autowired
	AuthorClassService service;
	
	@Autowired
	AuthortClassMapper mapper;

  @GetMapping("mypage/class/list")
  public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage) {
	  ModelAndView mview = new ModelAndView();

	    int totalCount = service.getTotalCount("kang");
	    System.out.println(totalCount);

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

	    List<ClassBoardDto> list = service.getList("kang", start, perPage);

	    int no = totalCount - (currentPage - 1) * perPage;

	    mview.addObject("list", list);
	    mview.addObject("startPage", startPage);
	    mview.addObject("endPage", endPage);
	    mview.addObject("totalPage", totalPage);
	    mview.addObject("no", no);
	    mview.addObject("currentPage", currentPage);

	    mview.addObject("totalCount", totalCount);
	    mview.setViewName("/1/author_mypage/class_list");
	    
	    return mview;
  }
  
  @GetMapping("/mypage/class/addform")
	public String addform() {
		return "/1/author_mypage/class_write_form";
	}
  
  @PostMapping("/mypage/class/insert")
	public String insert(@ModelAttribute ClassBoardDto cdto, HttpSession session) {

		String path = session.getServletContext().getRealPath("/photo");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		if(cdto.getUpload().getOriginalFilename().equals("")) {
			cdto.setUploadfile("no");
		}else {
			String uploadfile  = "f"+ sdf.format(new Date())+cdto.getUpload().getOriginalFilename();
			cdto.setUploadfile(uploadfile);

			try {
				cdto.getUpload().transferTo(new File(path+"\\"+uploadfile));
			}catch (IllegalStateException | IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		if(cdto.getUpload1().getOriginalFilename().equals("")) {
			cdto.setUploadfile("no");
		}else {
			String uploadfile1  = "f"+ sdf.format(new Date())+cdto.getUpload().getOriginalFilename();
			cdto.setUploadfile1(uploadfile1);

			try {
				cdto.getUpload1().transferTo(new File(path+"\\"+uploadfile1));
			}catch (IllegalStateException | IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		if(cdto.getUpload2().getOriginalFilename().equals("")) {
			cdto.setUploadfile("no");
		}else {
			String uploadfile2  = "f"+ sdf.format(new Date())+cdto.getUpload().getOriginalFilename();
			cdto.setUploadfile2(uploadfile2);

			try {
				cdto.getUpload2().transferTo(new File(path+"\\"+uploadfile2));
			}catch (IllegalStateException | IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		if(cdto.getUpload3().getOriginalFilename().equals("")) {
			cdto.setUploadfile("no");
		}else {
			String uploadfile3  = "f"+ sdf.format(new Date())+cdto.getUpload().getOriginalFilename();
			cdto.setUploadfile3(uploadfile3);

			try {
				cdto.getUpload3().transferTo(new File(path+"\\"+uploadfile3));
			}catch (IllegalStateException | IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		if(cdto.getUpload4().getOriginalFilename().equals("")) {
			cdto.setUploadfile("no");
		}else {
			String uploadfile4  = "f"+ sdf.format(new Date())+cdto.getUpload().getOriginalFilename();
			cdto.setUploadfile4(uploadfile4);

			try {
				cdto.getUpload4().transferTo(new File(path+"\\"+uploadfile4));
			}catch (IllegalStateException | IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		if(cdto.getUpload5().getOriginalFilename().equals("")) {
			cdto.setUploadfile("no");
		}else {
			String uploadfile5  = "f"+ sdf.format(new Date())+cdto.getUpload().getOriginalFilename();
			cdto.setUploadfile5(uploadfile5);

			try {
				cdto.getUpload5().transferTo(new File(path+"\\"+uploadfile5));
			}catch (IllegalStateException | IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	
		String myid = (String) session.getAttribute("myid");
		cdto.setMyid(myid);

		service.insertBoard(cdto);
		return "redirect:/mypage/class/list";
	}

}
