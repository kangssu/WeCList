package data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import data.dto.AuthorProfileDto;
import data.dto.UserDto;
import data.service.AuthorProfileService;
import data.service.UserProfileService;

@Controller
public class UserProfileController {
  
  @Autowired
  UserProfileService service;

  // 프로필을 id값 myid(angel)로 불러오기!
  @GetMapping("/mypage/userpage")
  public ModelAndView content(@RequestParam(required = false) String myid) {
    ModelAndView mview = new ModelAndView();
    int totalCount = service.getTotalCount("angel"); // 여기 나중에 myid로 변경!
    // System.out.println(totalCount);

    // System.out.println(myid);
    UserDto dto = service.GetIdData("angel");// 여기 나중에 myid로 변경!
    // System.out.println(dto.getHistory());

    mview.addObject("dto", dto);
    mview.addObject("totalCount", totalCount);

    mview.setViewName("/1/author_mypage/profile_list");

    return mview;
  }

}
