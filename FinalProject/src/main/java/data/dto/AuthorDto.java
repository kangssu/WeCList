package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("aadto")
public class AuthorDto {

  // usersjoin dto
  private String idx;
  private String id;
  private String irum;

  // profile dto
  private String concise;

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
