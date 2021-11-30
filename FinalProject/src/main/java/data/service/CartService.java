package data.service;

import data.dto.CartDTO;
import data.mapper.CartMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

    @Autowired
    CartMapper mapper;

    // 카트에 넣기
  public  void insertCart(CartDTO cartDTO) {
        mapper.insertCart(cartDTO);
    }

    // 카트 리스트 출력
   public List<CartDTO> listCart(int userIdx) {
        return mapper.listCart(userIdx);
    }

    // 카트 하나만 삭제
   public void deleteCart(CartDTO cartDTO) {
        mapper.deleteCart(cartDTO);
    }

    // 카트 모두 삭제
    public void deleteAllCart(int userIdx) {
        mapper.deleteAllCart(userIdx);
    }

}
