package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;
import lombok.Data;


@Data
@Alias("sdto")
public class ShopBoardDto {

  private String num;
  private String name;
  private String myid;
  private String title;
  private String shopop;
  private String shopprice;
  private String shoptag;
  private String shopsub;
  private String shopcontent;
  private String shopdelivery;
  private String uploadfile;
  private MultipartFile upload;
  private int readcount;
  private String shopheart;
  private Timestamp writeday;
}
