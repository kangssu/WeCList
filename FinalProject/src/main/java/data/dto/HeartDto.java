package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("hdto")
public class HeartDto {
	private String idx;
	private String num;
	private String id;
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
