package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("ahdto")
public class AuthorHomeDto {

  // useresjoin 테이블
  private String id;
  private String nickname;
  private String profileimg;
  private String category;

  // profile 테이블
  private String concise;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getProfileimg() {
    return profileimg;
  }

  public void setProfileimg(String profileimg) {
    this.profileimg = profileimg;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public String getConcise() {
    return concise;
  }

  public void setConcise(String concise) {
    this.concise = concise;
  }


}
