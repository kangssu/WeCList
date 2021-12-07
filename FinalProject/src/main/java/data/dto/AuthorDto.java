package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("aadto")
public class AuthorDto {

  // usersjoin dto
  private String idx;
  private String id;
  private String irum;
  private String profileimg;
  private int category;

  // profile dto
  private String concise;

  public String getProfileimg() {
    return profileimg;
  }

  public void setProfileimg(String profileimg) {
    this.profileimg = profileimg;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public int getCategory() {
    return category;
  }

  public void setCategory(int category) {
    this.category = category;
  }

  public String getIdx() {
    return idx;
  }

  public void setIdx(String idx) {
    this.idx = idx;
  }

  public String getIrum() {
    return irum;
  }

  public void setIrum(String irum) {
    this.irum = irum;
  }

  public String getConcise() {
    return concise;
  }

  public void setConcise(String concise) {
    this.concise = concise;
  }

}
