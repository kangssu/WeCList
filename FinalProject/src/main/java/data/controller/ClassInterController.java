package data.controller;

import java.util.HashMap;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import data.dto.InterDto;
import data.mapper.ClassInterMapper;

@RestController
public class ClassInterController {

  @Autowired
  ClassInterMapper service;

  @PostMapping("/class/iinsert")
  public void insert(@ModelAttribute InterDto dto, @RequestParam String class_inter,
      @RequestParam(required = false) int num, HttpSession session) {

    String idx = dto.getIdx();
    int inter_cnt = dto.getInter_cnt();

    inter_cnt = service.getMaxInterCnt(num) + 1;

    dto.setInter_cnt(inter_cnt);

    service.insertInter(dto);
    service.updateInter(num);
  }

  @PostMapping("/class/idelete")
  public void delete(String class_inter, @RequestParam(required = false) int num,
      HttpSession session) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("class_inter", class_inter);
    map.put("num", num);
    service.deleteInter(map);
    service.downdateInter(num);
  }
}
