package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import data.dto.ClassBoardDto;
import data.dto.ClassNewBoardDto;
import data.mapper.MainMapper;
import data.service.MainService;

@Controller
public class MainController {
	
  @Autowired
  MainMapper classmapper;
  
  @Autowired
  MainService classservice;

  @GetMapping("/")
  public String home() {
    return "/inc/main";
  }

  @GetMapping("/class")
  public ModelAndView getMain()
	{
		ModelAndView mview=new ModelAndView();
		List<ClassBoardDto> listMain=classmapper.getAlllist();
		List<ClassNewBoardDto> listnewsMain=classmapper.getAllnewlist();
		List<ClassBoardDto> listpopulMain=classmapper.getPopular();
		
		mview.addObject("listMain", listMain);
		mview.addObject("listnewsMain", listnewsMain);
		mview.addObject("listpopulMain", listpopulMain);
		mview.setViewName("/2/inc/class");
		return mview;
	}
}
