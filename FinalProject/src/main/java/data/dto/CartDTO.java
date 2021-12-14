package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("cartdto")
public class CartDTO {

  // cart Table
  private int user_idx;
  private int shop_num;
  private String shop_option;
  private int shop_qty;
  // shopBoarder Table
  private String name; // shop name
  private String title; // item title
  private int shop_price;
  private String itemImage;
  // usersjoin Table
  private String user_id; // id

  @Override
  public String toString() {
    return "CartDTO [user_idx=" + user_idx + ", shop_num=" + shop_num + ", shop_option="
        + shop_option + ", shop_qty=" + shop_qty + ", name=" + name + ", title=" + title
        + ", shop_price=" + shop_price + ", itemImage=" + itemImage + ", user_id=" + user_id
        + "]";
  }

  public String getItemImage() {
    return itemImage;
  }

  public void setItemImage(String itemImage) {
    this.itemImage = itemImage;
  }

  public int getUser_idx() {
    return user_idx;
  }

  public void setUser_idx(int user_idx) {
    this.user_idx = user_idx;
  }

  public int getShop_num() {
    return shop_num;
  }

  public void setShop_num(int shop_num) {
    this.shop_num = shop_num;
  }

  public String getShop_option() {
    return shop_option;
  }

  public void setShop_option(String shop_option) {
    this.shop_option = shop_option;
  }

  public int getShop_qty() {
    return shop_qty;
  }

  public void setShop_qty(int shop_qty) {
    this.shop_qty = shop_qty;
  }

  public String getName() {
    return name;
  }

  public void setName(String shop_name) {
    this.name = shop_name;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public int getShop_price() {
    return shop_price;
  }

  public void setShop_price(int shop_price) {
    this.shop_price = shop_price;
  }

  public String getUser_id() {
    return user_id;
  }

  public void setUser_id(String user_id) {
    this.user_id = user_id;
  }
}
