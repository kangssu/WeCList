package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("idto")
public class InterDto {
	private String class_inter;
	private String idx;
	private String num;
	private int inter_cnt;
	
	public String getClass_inter() {
		return class_inter;
	}
	public void setClass_inter(String class_inter) {
		this.class_inter = class_inter;
	}
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
	public int getInter_cnt() {
		return inter_cnt;
	}
	public void setInter_cnt(int inter_cnt) {
		this.inter_cnt = inter_cnt;
	}
	
	
}
