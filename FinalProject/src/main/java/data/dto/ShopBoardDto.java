package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("sdto")
public class ShopBoardDto {

  private String num;
  private String name;
  private String myid;
  private String title;
  private String shopop;
  private String shopprice;
  private String shoptag;
  private String subprice1;
  private String suboption1;
  private String subprice2;
  private String suboption2;
  private String subprice3;
  private String suboption3;
  private String subprice4;
  private String suboption4;
  private String subprice5;
  private String suboption5;
  private String shopsub;
  private String shopcontent;
  private String shopdelivery;
  private String uploadfile1;
  private MultipartFile upload1;
  private String uploadfile2;
  private MultipartFile upload2;
  private String uploadfile3;
  private MultipartFile upload3;
  private String uploadfile4;
  private MultipartFile upload4;
  private String uploadfile5;
  private MultipartFile upload5;
  private int readcount;
  private int shopheart;
  private String shop_heart;
  private Timestamp writeday;

  
  public int getShopheart() {
    return shopheart;
  }

  public void setShopheart(int shopheart) {
    this.shopheart = shopheart;
  }

  public String getSubprice1() {
    return subprice1;
  }

  public void setSubprice1(String subprice1) {
    this.subprice1 = subprice1;
  }

  public String getSuboption1() {
    return suboption1;
  }

  public void setSuboption1(String suboption1) {
    this.suboption1 = suboption1;
  }

  public String getSubprice2() {
    return subprice2;
  }

  public void setSubprice2(String subprice2) {
    this.subprice2 = subprice2;
  }

  public String getSuboption2() {
    return suboption2;
  }

  public void setSuboption2(String suboption2) {
    this.suboption2 = suboption2;
  }

  public String getSubprice3() {
    return subprice3;
  }

  public void setSubprice3(String subprice3) {
    this.subprice3 = subprice3;
  }

  public String getSuboption3() {
    return suboption3;
  }

  public void setSuboption3(String suboption3) {
    this.suboption3 = suboption3;
  }

  public String getSubprice4() {
    return subprice4;
  }

  public void setSubprice4(String subprice4) {
    this.subprice4 = subprice4;
  }

  public String getSuboption4() {
    return suboption4;
  }

  public void setSuboption4(String suboption4) {
    this.suboption4 = suboption4;
  }

  public String getSubprice5() {
    return subprice5;
  }

  public void setSubprice5(String subprice5) {
    this.subprice5 = subprice5;
  }

  public String getSuboption5() {
    return suboption5;
  }

  public void setSuboption5(String suboption5) {
    this.suboption5 = suboption5;
  }

  public String getUploadfile1() {
    return uploadfile1;
  }

  public void setUploadfile1(String uploadfile1) {
    this.uploadfile1 = uploadfile1;
  }

  public MultipartFile getUpload1() {
    return upload1;
  }

  public void setUpload1(MultipartFile upload1) {
    this.upload1 = upload1;
  }

  public String getUploadfile2() {
    return uploadfile2;
  }

  public void setUploadfile2(String uploadfile2) {
    this.uploadfile2 = uploadfile2;
  }

  public MultipartFile getUpload2() {
    return upload2;
  }

  public void setUpload2(MultipartFile upload2) {
    this.upload2 = upload2;
  }

  public String getUploadfile3() {
    return uploadfile3;
  }

  public void setUploadfile3(String uploadfile3) {
    this.uploadfile3 = uploadfile3;
  }

  public MultipartFile getUpload3() {
    return upload3;
  }

  public void setUpload3(MultipartFile upload3) {
    this.upload3 = upload3;
  }

  public String getUploadfile4() {
    return uploadfile4;
  }

  public void setUploadfile4(String uploadfile4) {
    this.uploadfile4 = uploadfile4;
  }

  public MultipartFile getUpload4() {
    return upload4;
  }

  public void setUpload4(MultipartFile upload4) {
    this.upload4 = upload4;
  }

  public String getUploadfile5() {
    return uploadfile5;
  }

  public void setUploadfile5(String uploadfile5) {
    this.uploadfile5 = uploadfile5;
  }

  public MultipartFile getUpload5() {
    return upload5;
  }

  public void setUpload5(MultipartFile upload5) {
    this.upload5 = upload5;
  }

  public String getNum() {
    return num;
  }

  public void setNum(String num) {
    this.num = num;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getMyid() {
    return myid;
  }

  public void setMyid(String myid) {
    this.myid = myid;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getShopop() {
    return shopop;
  }

  public void setShopop(String shopop) {
    this.shopop = shopop;
  }

  public String getShopprice() {
    return shopprice;
  }

  public void setShopprice(String shopprice) {
    this.shopprice = shopprice;
  }

  public String getShoptag() {
    return shoptag;
  }

  public void setShoptag(String shoptag) {
    this.shoptag = shoptag;
  }

  public String getShopsub() {
    return shopsub;
  }

  public void setShopsub(String shopsub) {
    this.shopsub = shopsub;
  }

  public String getShopcontent() {
    return shopcontent;
  }

  public void setShopcontent(String shopcontent) {
    this.shopcontent = shopcontent;
  }

  public String getShopdelivery() {
    return shopdelivery;
  }

  public void setShopdelivery(String shopdelivery) {
    this.shopdelivery = shopdelivery;
  }


  public int getReadcount() {
    return readcount;
  }

  public void setReadcount(int readcount) {
    this.readcount = readcount;
  }

 

  public String getShop_heart() {
    return shop_heart;
  }

  public void setShop_heart(String shop_heart) {
    this.shop_heart = shop_heart;
  }

  public Timestamp getWriteday() {
    return writeday;
  }

  public void setWriteday(Timestamp writeday) {
    this.writeday = writeday;
  }


}
