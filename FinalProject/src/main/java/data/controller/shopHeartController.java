package data.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import data.dto.HeartDto;
import data.dto.ShopHeartDto;
import data.service.ClassHeartService;
import data.service.ShopHeartService;

@RestController
public class shopHeartController {

    @Autowired
    ShopHeartService service;

    @PostMapping("/shop/shinsert")
    public void insert(@ModelAttribute ShopHeartDto dto, HttpSession session) {
        // insert
      String idx = dto.getIdx();
      int like_cnt = dto.getLike_cnt();
      String num = dto.getNum();
      System.out.println(num);

      like_cnt = service.getMaxLikeCnt(num)+1;

      System.out.println(like_cnt);

      dto.setLike_cnt(like_cnt);
      
        service.insertHeart(dto);
    }

    @PostMapping("/shop/shdelete")
    public void delete(String shop_heart, String num, HttpSession session) {
        service.deleteHeart(shop_heart, num);
    }
}
