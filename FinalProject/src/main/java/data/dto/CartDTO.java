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
    private String name;    // shop name
    private String title;   // item title
    private int itemPrice;
    private String itemImage;

    public void setItemPrice(int itemPrice) {
        this.itemPrice = itemPrice;
    }

    public void setItemImage(String itemImage) {
        this.itemImage = itemImage;
    }

    @Override
    public String toString() {
        return "CartDTO{" +
            "user_idx=" + user_idx +
            ", shop_num=" + shop_num +
            ", shop_option='" + shop_option + '\'' +
            ", shop_qty=" + shop_qty +
            ", name='" + name + '\'' +
            ", title='" + title + '\'' +
            ", itemPrice=" + itemPrice +
            ", itemImage='" + itemImage + '\'' +
            '}' + '\n';
    }

    public int getUser_idx() {
        return user_idx;
    }

    public int getShop_num() {
        return shop_num;
    }

    public String getShop_option() {
        return shop_option;
    }

    public int getShop_qty() {
        return shop_qty;
    }

    public String getName() {
        return name;
    }

    public String getTitle() {
        return title;
    }

    public int getItemPrice() {
        return itemPrice;
    }

    public String getItemImage() {
        return itemImage;
    }
}