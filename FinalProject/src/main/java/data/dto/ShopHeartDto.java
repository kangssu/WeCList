package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("shdto")
public class ShopHeartDto {
	private String shop_heart;
	private String idx;
	private String num;

    private int like_cnt;
	
	
	@Override
	public String toString() {
		return "ShopHeartDto [shop_heart=" + shop_heart + ", idx=" + idx + ", num=" + num + "]";
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	public String getShop_heart() {
		return shop_heart;
	}
	public void setShop_heart(String shop_heart) {
		this.shop_heart = shop_heart;
	}
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}

    public int getLike_cnt() {
        return like_cnt;
    }
    
    public void setLike_cnt(int like_cnt) {
        this.like_cnt = like_cnt;
    }
}
