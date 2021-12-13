package data.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import data.dto.HeartDto;
import data.dto.ShopBoardDto;
import data.dto.ShopHeartDto;
import data.service.ClassHeartService;
import data.service.ShopHeartService;

@RestController
public class shopHeartController {

    @Autowired
    ShopHeartService service;

    @PostMapping("/shop/shinsert")
    public void insert(@ModelAttribute ShopHeartDto dto,
        @RequestParam String shop_heart,
       @RequestParam(required=false) int num ,HttpSession session
        ) {
        // insert
      String idx = dto.getIdx();
      int like_cnt = dto.getLike_cnt();
      

      like_cnt = service.getMaxLikeCnt(num)+1;

      System.out.println(like_cnt);

      dto.setLike_cnt(like_cnt);
        service.updateHeart(num);
        service.insertHeart(dto);
    }

    @PostMapping("/shop/shdelete")
    public void delete(String shop_heart,  @RequestParam(required=false) int num , HttpSession session) {

        service.downdateHeart(num);
        service.deleteHeart(shop_heart, num);
    }
}
