package data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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
import data.mapper.ClassBoardMapper;
import data.service.ClassBoardService;

@Controller
public class ClassController {

	@Autowired
	ClassBoardService service;
	
	@Autowired
	ClassBoardMapper mapper;

	@GetMapping("/class/list")
	public ModelAndView getAlllist()
	{
		ModelAndView mview=new ModelAndView();
		List<ClassBoardDto> list=mapper.getAlllist();
		
		mview.addObject("list", list);
		//mview.setViewName("shoplist");
		mview.setViewName("/2/class/class_list");//tiles 는 /폴더명/파일명 구조이다
		return mview;
	}

	@GetMapping("/class/view")
	public ModelAndView view(@RequestParam String num)
	{
		ModelAndView mview=new ModelAndView();

		ClassBoardDto dto=service.getData(num);

		//업로드파일의 확장자 얻기
		int dotLoc=dto.getUploadfile().lastIndexOf(".");//마지막 .의 위치
		String ext=dto.getUploadfile().substring(dotLoc+1);//. 다음글자부터 끝까지 출력

		if(ext.equalsIgnoreCase("jpg")||ext.equalsIgnoreCase("gif")||
				ext.equalsIgnoreCase("png")||ext.equalsIgnoreCase("jpeg"))
			mview.addObject("bupload", true);
		else
			mview.addObject("bupload", false);

		mview.addObject("dto", dto);
		mview.setViewName("/2/class/class_view");
		return mview;
	}

	@GetMapping("/class/popul")
	public String popul() {
		return "/2/class/class_popular";
	}

	@GetMapping("/class/news")
	public String news() {
		return "/2/class/class_news";
	}

	@GetMapping("/class/addform")
	public String addform() {
		return "/2/class/class_addform";
	}

	@GetMapping("/class/view_news")
	public String view_news() {
		return "/2/class/class_view_news";
	}

	@PostMapping("/class/insert")
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
	
		String myid = (String) session.getAttribute("myid");
		cdto.setMyid(myid);

		service.insertBoard(cdto);
		return "redirect:/class/addform";
	}
	
	

}

