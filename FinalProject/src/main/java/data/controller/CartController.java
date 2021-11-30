package data.controller;

import data.dto.CartDTO;
import data.service.CartService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartController {

    @Autowired
    CartService cartService;

    private final Logger LOGGER = LoggerFactory.getLogger(CartController.class);

    @PostMapping("/cart/insert")
    public String insertCart(@ModelAttribute CartDTO cartDTO, HttpSession session) {
// TODO: 로그인 하지 않았을 경우 처리
        int userIdx = 100;
        if((Integer)session.getAttribute("idx") != null)
        {
            userIdx = (Integer) session.getAttribute("idx");
        }
        cartService.insertCart(cartDTO);
        LOGGER.info("POST:/cart/insert w/"  + userIdx);
        return "redirect:/cart/list";
    }

    @GetMapping("/cart/list")
    public ModelAndView list(HttpSession session, ModelAndView mv){
        // TODO: 로그인, 비로그인 처리
        int userIdx = 100;
        if((Integer)session.getAttribute("idx") != null)
        {
            userIdx = (Integer) session.getAttribute("idx");
        }
        List<CartDTO> list = cartService.listCart(userIdx);
        // TODO: 배송비,쿠폰, 할인, 돈 계산

        mv.addObject("list", list);
        mv.setViewName("/shop/shop_buy");
        LOGGER.info("GET:/cart/list w/" + userIdx);
        LOGGER.info(list.toString());
        return mv;
    }
}
