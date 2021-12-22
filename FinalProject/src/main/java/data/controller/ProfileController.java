package data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import data.dto.AuthorProfileDto;
import data.service.AuthorProfileService;

@Controller
public class ProfileController {

  @Autowired
  AuthorProfileService service;

  @Value("${file.upload.image}")
  String imagePath;

  // 프로필을 id값으로 불러오기!
  @GetMapping("/mypage/profile")
  public ModelAndView content(HttpSession session) {
    ModelAndView mview = new ModelAndView();
    String myid = (String) session.getAttribute("id");
    int totalCount = service.getTotalCount(myid);

    AuthorProfileDto dto = service.GetIdData(myid);

    mview.addObject("dto", dto);
    mview.addObject("totalCount", totalCount);

    mview.setViewName("/1/author_mypage/profile_list");

    return mview;
  }

  // 프로필 등록폼으로 이동!
  @GetMapping("/mypage/profile/form")
  public String mypageForm() {
    return "/1/author_mypage/profile_write_form";
  }

  // 프로필 등록!
  @PostMapping("/mypage/pinsert")
  public String insert(@ModelAttribute AuthorProfileDto apdto,
      @RequestParam(required = false) String myid, HttpSession session) {
    String path = session.getServletContext().getRealPath("/photo");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    String photo = "";
    String photo2 = "";
    String photo3 = "";
    // 첫번째 이미지!
    if (apdto.getUpload1().get(0).getOriginalFilename().equals("")) {
      photo = "no";
    } else {
      for (MultipartFile f : apdto.getUpload1()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(imagePath + "/" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }

      photo = photo.substring(0, photo.length() - 1);
    }

    // 두번째 이미지!
    if (apdto.getUpload2().get(0).getOriginalFilename().equals("")) {
      photo2 = "no";
    } else {
      for (MultipartFile f : apdto.getUpload2()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo2 += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(imagePath + "/" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }

      photo2 = photo2.substring(0, photo2.length() - 1);
    }

    // 세번째 이미지!
    if (apdto.getUpload3().get(0).getOriginalFilename().equals("")) {
      photo3 = "no";
    } else {
      for (MultipartFile f : apdto.getUpload3()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo3 += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(imagePath + "/" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }

      photo3 = photo3.substring(0, photo3.length() - 1);
    }

    apdto.setHistory_file(photo);
    apdto.setIdea_file(photo2);
    apdto.setIdentity_file(photo3);

    // insert
    service.insertProfile(apdto);

    return "redirect:/mypage/profile";
  }

  // 프로필 수정폼으로 이동!
  @GetMapping("/mypage/profile/upform")
  public ModelAndView updateForm(String num, String currentPage, HttpSession session) {

    ModelAndView mview = new ModelAndView();

    String myid = (String) session.getAttribute("id");
    AuthorProfileDto dto = service.GetIdData(myid);

    mview.addObject("dto", dto);

    mview.setViewName("/1/author_mypage/profile_update_form");

    return mview;
  }

  // 수정!
  @PostMapping("/mypage/pupdate")
  public String update(@ModelAttribute AuthorProfileDto apdto,
      @RequestParam(required = false) String myid, HttpSession session) {
    String path = session.getServletContext().getRealPath("/photo");
    // System.out.println(path); // 제대로 나옴!
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    String photo = "";
    String photo2 = "";
    String photo3 = "";
    // 첫번째 이미지!
    if (apdto.getUpload1().get(0).getOriginalFilename().equals("")) {
      photo = "no";
    } else {
      for (MultipartFile f : apdto.getUpload1()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(imagePath + "/" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }

      photo = photo.substring(0, photo.length() - 1);
    }

    // 두번째 이미지!
    if (apdto.getUpload2().get(0).getOriginalFilename().equals("")) {
      photo2 = "no";
    } else {
      for (MultipartFile f : apdto.getUpload2()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo2 += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(imagePath + "/" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }

      photo2 = photo2.substring(0, photo2.length() - 1);
    }

    // 세번째 이미지!
    if (apdto.getUpload3().get(0).getOriginalFilename().equals("")) {
      photo3 = "no";
    } else {
      for (MultipartFile f : apdto.getUpload3()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo3 += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(imagePath + "/" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }

      photo3 = photo3.substring(0, photo3.length() - 1);
    }

    apdto.setHistory_file(photo);
    apdto.setIdea_file(photo2);
    apdto.setIdentity_file(photo3);

    // update
    service.updateProfile(apdto);

    return "redirect:/mypage/profile";
  }

  // 삭제
  @GetMapping("/mypage/pdelete")
  public String delete(HttpSession session) {

    String path = session.getServletContext().getRealPath("/photo");
    String myid = (String) session.getAttribute("id");

    ArrayList<MultipartFile> uploadfile1 = service.GetIdData(myid).getUpload1();
    ArrayList<MultipartFile> uploadfile2 = service.GetIdData(myid).getUpload2();
    ArrayList<MultipartFile> uploadfile3 = service.GetIdData(myid).getUpload3();

    File file1 = new File(imagePath + "/" + uploadfile1);
    File file2 = new File(imagePath + "/" + uploadfile2);
    File file3 = new File(imagePath + "/" + uploadfile3);

    // 파일삭제
    file1.delete();
    file2.delete();
    file3.delete();

    service.deleteProfile(myid);
    return "redirect:/mypage/profile";
  }

}
