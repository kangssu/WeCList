package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

@Alias("ujdto")
public class UsersJoinDto {

	private String idx;
	private String id;
	private String pass1;
	private String irum;
	private String email;
	private String hp;
	private String addr1;
	private String addr2;
	private String useterms;
	private String personterms;
	private String ageterms;
	private String profileimg;
	private String category;
	
	

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProfileimg() {
		return profileimg;
	}

	public void setProfileimg(String profileimg) {
		this.profileimg = profileimg;
	}

	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Timestamp gaipday;

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass1() {
		return pass1;
	}

	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}

	public String getIrum() {
		return irum;
	}

	public void setIrum(String irum) {
		this.irum = irum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getUseterms() {
		return useterms;
	}

	public void setUseterms(String useterms) {
		this.useterms = useterms;
	}

	public String getPersonterms() {
		return personterms;
	}

	public void setPersonterms(String personterms) {
		this.personterms = personterms;
	}

	public String getAgeterms() {
		return ageterms;
	}

	public void setAgeterms(String ageterms) {
		this.ageterms = ageterms;
	}

	public Timestamp getGaipday() {
		return gaipday;
	}

	public void setGaipday(Timestamp gaipday) {
		this.gaipday = gaipday;
	}

	

}
