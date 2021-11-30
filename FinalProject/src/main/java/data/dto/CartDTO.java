package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("cartdto")
public class CartDTO {
    // cart Table
    private int userIdx;
    private int shopNum;
    private String shopOption;
    private int shopQty;
    // shopBoarder Table
    private String shopname;
    private String itemTitle;
    private int itemPrice;
    private String itemImage;

    @Override
    public String toString() {
        return "CartDTO{" +
            "userIdx=" + userIdx +
            ", shopNum=" + shopNum +
            ", shopOption='" + shopOption + '\'' +
            ", shopQty=" + shopQty +
            ", shopname='" + shopname + '\'' +
            ", itemTitle='" + itemTitle + '\'' +
            ", itemPrice=" + itemPrice +
            ", itemImage='" + itemImage + '\'' +
            '}';
    }

    public int getUserIdx() {
        return userIdx;
    }

    public int getShopNum() {
        return shopNum;
    }

    public String getShopOption() {
        return shopOption;
    }

    public int getShopQty() {
        return shopQty;
    }

    public String getShopname() {
        return shopname;
    }

    public String getItemTitle() {
        return itemTitle;
    }

    public int getItemPrice() {
        return itemPrice;
    }

    public String getItemImage() {
        return itemImage;
    }
}
