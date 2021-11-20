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
  private String shopsub;
  private String shopcontent;
  private String shopdelivery;
  private String uploadfile;
  private MultipartFile upload;
  private int readcount;
  private String shopheart;
  private Timestamp writeday;

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

  public String getUploadfile() {
    return uploadfile;
  }

  public void setUploadfile(String uploadfile) {
    this.uploadfile = uploadfile;
  }

  public MultipartFile getUpload() {
    return upload;
  }

  public void setUpload(MultipartFile upload) {
    this.upload = upload;
  }

  public int getReadcount() {
    return readcount;
  }

  public void setReadcount(int readcount) {
    this.readcount = readcount;
  }

  public String getShopheart() {
    return shopheart;
  }

  public void setShopheart(String shopheart) {
    this.shopheart = shopheart;
  }

  public Timestamp getWriteday() {
    return writeday;
  }

  public void setWriteday(Timestamp writeday) {
    this.writeday = writeday;
  }


}
