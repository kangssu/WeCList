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

import data.dto.ClassBoardDto;
import data.service.ClassBoardService;

@Controller
public class ClassController {

	@Autowired
	ClassBoardService service;

	@GetMapping("/class/list")
	public String list() {
		return "/2/class/class_list";
	}

	@GetMapping("/class/view")
	public String view() {
		return "/2/class/class_view";
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
		return "redirect:content?num="+service.getMaxNum();
	}

}

