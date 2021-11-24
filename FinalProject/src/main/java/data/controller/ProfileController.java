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
import org.springframework.web.multipart.MultipartFile;
import data.dto.AuthorProfileDto;
import data.service.AuthorProfileService;

@Controller
public class ProfileController {

  @Autowired
  AuthorProfileService service;

  @GetMapping("/mypage/profile")
  public String mypage() {
    return "/1/author_mypage/mypage_profile";
  }

  @GetMapping("/mypage/profile/form")
  public String mypageForm() {
    return "/1/author_mypage/mypage_profile_write_form";
  }

  /*
   * @PostMapping("/mypage/pinsert") public String profileInsert(@ModelAttribute AuthorProfileDto
   * dto) {
   * 
   * service.insertProfile(dto); return "/1/author_mypage/mypage_profile"; }
   */

  // 프로필 등록!
  @PostMapping("/mypage/pinsert")
  public String insert(@ModelAttribute AuthorProfileDto apdto, HttpSession session) {
    String path = session.getServletContext().getRealPath("/photo");
    System.out.println(path); // 제대로 나옴!
    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

    String photo = "";
    // 사진 선택을 안했을 경우 no, 했을 경우 ,로 나열!(파일명은 시간으로 지정)
    // 첫번째 이미지!
    if (apdto.getUpload1().get(0).getOriginalFilename().equals("")) {
      photo = "no";
    } else {
      // 파일명 앞에 "f" + 날짜 + 원래이름(컴마로 연결해서 photo에 추가)
      for (MultipartFile f : apdto.getUpload1()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(path + "\\" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
      // photo에서 마지막 컴마 제거
      photo = photo.substring(0, photo.length() - 1);
    }

    // 두번째 이미지!
    if (apdto.getUpload2().get(0).getOriginalFilename().equals("")) {
      photo = "no";
    } else {
      // 파일명 앞에 "f" + 날짜 + 원래이름(컴마로 연결해서 photo에 추가)
      for (MultipartFile f : apdto.getUpload2()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(path + "\\" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
      // photo에서 마지막 컴마 제거
      photo = photo.substring(0, photo.length() - 1);
    }

    // 세번째 이미지!
    if (apdto.getUpload3().get(0).getOriginalFilename().equals("")) {
      photo = "no";
    } else {
      // 파일명 앞에 "f" + 날짜 + 원래이름(컴마로 연결해서 photo에 추가)
      for (MultipartFile f : apdto.getUpload3()) {
        String fName = "f" + sdf.format(new Date()) + f.getOriginalFilename();
        photo += fName + ",";

        // 업로드!
        try {
          f.transferTo(new File(path + "\\" + fName));
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
      // photo에서 마지막 컴마 제거
      photo = photo.substring(0, photo.length() - 1);
    }

    apdto.setHistory_file(photo);
    apdto.setIdea_file(photo);
    apdto.setIdentity_file(photo);

    // insert
    service.insertProfile(apdto);

    return "/1/author_mypage/mypage_profile";
  }

}
