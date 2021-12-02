package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

@Alias("ujdto")
public class UsersJoinDto {

	private String idx;
	private String id;
	private String pass;
	private String name;
	private String email;
	private String hp;
	private String addr1;
	private String addr2;
	private String useterms;
	private String personterms;
	private String ageterms;

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

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
